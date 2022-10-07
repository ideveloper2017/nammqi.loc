<?php

namespace Botble\Teammanager\Models;

use Botble\Base\Models\BaseModel;

class TeammanagerTranslation extends BaseModel
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'teammanagers_translations';

    /**
     * @var array
     */
    protected $fillable = [
        'lang_code',
        'teammanagers_id',
        'name',
    ];

    /**
     * @var bool
     */
    public $timestamps = false;
}
