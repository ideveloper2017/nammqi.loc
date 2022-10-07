<?php

return [
    [
        'name' => 'Teammanagers',
        'flag' => 'teammanager.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'teammanager.create',
        'parent_flag' => 'teammanager.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'teammanager.edit',
        'parent_flag' => 'teammanager.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'teammanager.destroy',
        'parent_flag' => 'teammanager.index',
    ],
];
