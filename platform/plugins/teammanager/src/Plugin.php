<?php

namespace Botble\Teammanager;

use Illuminate\Support\Facades\Schema;
use Botble\PluginManagement\Abstracts\PluginOperationAbstract;

class Plugin extends PluginOperationAbstract
{
    public static function remove()
    {
        Schema::dropIfExists('teammanagers');
        Schema::dropIfExists('teammanagers_translations');
    }
}
