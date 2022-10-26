<?php

namespace Botble\Tenders\Models;

use Botble\Base\Models\BaseModel;

class TendersTranslation extends BaseModel
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'tenders_translations';

    /**
     * @var array
     */
    protected $fillable = [
        'lang_code',
        'tenders_id',
        'name',
    ];

    /**
     * @var bool
     */
    public $timestamps = false;
}
