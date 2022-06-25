<?php

namespace Theme\Nammqi\Http\Controllers;

use Botble\Theme\Http\Controllers\PublicController;

class NammqiController extends PublicController
{

    public function ajaxGetPanelInner(Request $request, BaseHttpResponse $response)
    {
        if (!$request->ajax()) {
            abort(404);
        }

        return $response->setData(Theme::partial('components.panel-inner'));
    }

    /**
     * {@inheritDoc}
     */
    public function getIndex()
    {
        return parent::getIndex();
    }

    /**
     * {@inheritDoc}
     */
    public function getView($key = null)
    {
        return parent::getView($key);
    }

    /**
     * {@inheritDoc}
     */
    public function getSiteMap()
    {
        return parent::getSiteMap();
    }
}
