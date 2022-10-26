<?php

namespace Botble\Services\Models;

use Botble\Base\Models\BaseModel;

class ServicesTranslation extends BaseModel
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'services_translations';

    /**
     * @var array
     */
    protected $fillable = [
        'lang_code',
        'services_id',
        'name',
    ];

    /**
     * @var bool
     */
    public $timestamps = false;
}
