<?php

namespace Botble\Services\Providers;

use Botble\Services\Models\Services;
use Illuminate\Support\ServiceProvider;
use Botble\Services\Repositories\Caches\ServicesCacheDecorator;
use Botble\Services\Repositories\Eloquent\ServicesRepository;
use Botble\Services\Repositories\Interfaces\ServicesInterface;
use Illuminate\Support\Facades\Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class ServicesServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(ServicesInterface::class, function () {
            return new ServicesCacheDecorator(new ServicesRepository(new Services));
        });

        $this->setNamespace('plugins/services')->loadHelpers();
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
                \Botble\LanguageAdvanced\Supports\LanguageAdvancedManager::registerModule(Services::class, [
                    'name',
                ]);
            } else {
                // Use language v1
                $this->app->booted(function () {
                    \Language::registerModule([Services::class]);
                });
            }
        }

        Event::listen(RouteMatched::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-services',
                'priority'    => 5,
                'parent_id'   => null,
                'name'        => 'plugins/services::services.name',
                'icon'        => 'fa fa-list',
                'url'         => route('services.index'),
                'permissions' => ['services.index'],
            ]);
        });
    }
}
