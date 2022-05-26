<?php

namespace Botble\Ims;

use Illuminate\Support\Facades\Schema;
use Botble\PluginManagement\Abstracts\PluginOperationAbstract;

class Plugin extends PluginOperationAbstract
{
    public static function remove()
    {
        Schema::dropIfExists('ims');
        Schema::dropIfExists('ims_translations');
    }
}
