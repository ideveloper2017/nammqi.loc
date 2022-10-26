<?php

namespace Botble\Tenders;

use Illuminate\Support\Facades\Schema;
use Botble\PluginManagement\Abstracts\PluginOperationAbstract;

class Plugin extends PluginOperationAbstract
{
    public static function remove()
    {
        Schema::dropIfExists('tenders');
        Schema::dropIfExists('tenders_translations');
    }
}
