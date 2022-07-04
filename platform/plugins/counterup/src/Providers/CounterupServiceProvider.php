<?php

namespace Botble\Counterup\Providers;

use Botble\Counterup\Models\Counterup;
use Illuminate\Support\ServiceProvider;
use Botble\Counterup\Repositories\Caches\CounterupCacheDecorator;
use Botble\Counterup\Repositories\Eloquent\CounterupRepository;
use Botble\Counterup\Repositories\Interfaces\CounterupInterface;
use Illuminate\Support\Facades\Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class CounterupServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(CounterupInterface::class, function () {
            return new CounterupCacheDecorator(new CounterupRepository(new Counterup));
        });

        $this->setNamespace('plugins/counterup')->loadHelpers();
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
                \Botble\LanguageAdvanced\Supports\LanguageAdvancedManager::registerModule(Counterup::class, [
                    'name',
                ]);
            } else {
                // Use language v1
                $this->app->booted(function () {
                    \Language::registerModule([Counterup::class]);
                });
            }
        }

        Event::listen(RouteMatched::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-counterup',
                'priority'    => 5,
                'parent_id'   => null,
                'name'        => 'plugins/counterup::counterup.name',
                'icon'        => 'fa fa-list',
                'url'         => route('counterup.index'),
                'permissions' => ['counterup.index'],
            ]);
        });
    }
}
