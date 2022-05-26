<?php

namespace Botble\Ims\Providers;

use Botble\Ims\Models\Ims;
use Illuminate\Support\ServiceProvider;
use Botble\Ims\Repositories\Caches\ImsCacheDecorator;
use Botble\Ims\Repositories\Eloquent\ImsRepository;
use Botble\Ims\Repositories\Interfaces\ImsInterface;
use Illuminate\Support\Facades\Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class ImsServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(ImsInterface::class, function () {
            return new ImsCacheDecorator(new ImsRepository(new Ims));
        });

        $this->setNamespace('plugins/ims')->loadHelpers();
    }

    public function boot()
    {
        $this
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadAndPublishViews()
            ->loadRoutes(['web']);

        if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
            if (defined('LANGUAGE_ADVANCED_MODULE_SCREEN_NAME')) {
                // Use language v2
                \Botble\LanguageAdvanced\Supports\LanguageAdvancedManager::registerModule(Ims::class, [
                    'name',
                ]);
            } else {
                // Use language v1
                $this->app->booted(function () {
                    \Language::registerModule([Ims::class]);
                });
            }
        }

        Event::listen(RouteMatched::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-ims',
                'priority'    => 5,
                'parent_id'   => null,
                'name'        => 'plugins/ims::ims.name',
                'icon'        => 'fa fa-list',
                'url'         => route('ims.index'),
                'permissions' => ['ims.index'],
            ]);
        });
    }
}
