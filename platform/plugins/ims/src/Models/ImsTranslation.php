<?php

namespace Botble\Ims\Models;

use Botble\Base\Models\BaseModel;

class ImsTranslation extends BaseModel
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'ims_translations';

    /**
     * @var array
     */
    protected $fillable = [
        'lang_code',
        'ims_id',
        'name',
    ];

    /**
     * @var bool
     */
    public $timestamps = false;
}
