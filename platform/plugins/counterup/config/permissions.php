<?php

return [
    [
        'name' => 'Counterups',
        'flag' => 'counterups.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'counterups.create',
        'parent_flag' => 'counterups.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'counterups.edit',
        'parent_flag' => 'counterups.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'counterups.destroy',
        'parent_flag' => 'counterups.index',
    ],

];
