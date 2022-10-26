<?php

return [
    [
        'name' => 'Tenders',
        'flag' => 'tenders.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'tenders.create',
        'parent_flag' => 'tenders.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'tenders.edit',
        'parent_flag' => 'tenders.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'tenders.destroy',
        'parent_flag' => 'tenders.index',
    ],
];
