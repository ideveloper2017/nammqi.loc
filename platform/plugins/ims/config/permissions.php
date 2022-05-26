<?php

return [
    [
        'name' => 'Ims',
        'flag' => 'ims.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'ims.create',
        'parent_flag' => 'ims.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'ims.edit',
        'parent_flag' => 'ims.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'ims.destroy',
        'parent_flag' => 'ims.index',
    ],
];
