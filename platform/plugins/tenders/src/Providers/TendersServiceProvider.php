<?php

namespace Botble\Tenders\Providers;

use Botble\Tenders\Models\Tenders;
use Illuminate\Support\ServiceProvider;
use Botble\Tenders\Repositories\Caches\TendersCacheDecorator;
use Botble\Tenders\Repositories\Eloquent\TendersRepository;
use Botble\Tenders\Repositories\Interfaces\TendersInterface;
use Illuminate\Support\Facades\Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class TendersServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(TendersInterface::class, function () {
            return new TendersCacheDecorator(new TendersRepository(new Tenders));
        });

        $this->setNamespace('plugins/tenders')->loadHelpers();
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
                \Botble\LanguageAdvanced\Supports\LanguageAdvancedManager::registerModule(Tenders::class, [
                    'name',
                ]);
            } else {
                // Use language v1
                $this->app->booted(function () {
                    \Language::registerModule([Tenders::class]);
                });
            }
        }

        Event::listen(RouteMatched::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-tenders',
                'priority'    => 5,
                'parent_id'   => null,
                'name'        => 'plugins/tenders::tenders.name',
                'icon'        => 'fa fa-list',
                'url'         => route('tenders.index'),
                'permissions' => ['tenders.index'],
            ]);
        });
    }
}
