<?php

namespace Botble\Teammanager\Providers;

use Botble\Teammanager\Models\Teammanager;
use Illuminate\Support\ServiceProvider;
use Botble\Teammanager\Repositories\Caches\TeammanagerCacheDecorator;
use Botble\Teammanager\Repositories\Eloquent\TeammanagerRepository;
use Botble\Teammanager\Repositories\Interfaces\TeammanagerInterface;
use Illuminate\Support\Facades\Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class TeammanagerServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(TeammanagerInterface::class, function () {
            return new TeammanagerCacheDecorator(new TeammanagerRepository(new Teammanager));
        });

        $this->setNamespace('plugins/teammanager')->loadHelpers();
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
                \Botble\LanguageAdvanced\Supports\LanguageAdvancedManager::registerModule(Teammanager::class, [
                    'name',
                ]);
            } else {
                // Use language v1
                $this->app->booted(function () {
                    \Language::registerModule([Teammanager::class]);
                });
            }
        }

        Event::listen(RouteMatched::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-teammanager',
                'priority'    => 5,
                'parent_id'   => null,
                'name'        => 'plugins/teammanager::teammanager.name',
                'icon'        => 'fa fa-list',
                'url'         => route('teammanager.index'),
                'permissions' => ['teammanager.index'],
            ]);
        });
    }
}
