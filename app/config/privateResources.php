<?php

use Phalcon\Config;
use Phalcon\Logger;

return new Config([
    'privateResources' => [
        'users' => [
            'index',
            'search',
            'edit',
            'time',
            'update',
            'save',
            'create',
            'delete',
            'changePassword'
        ],
        'profiles' => [
            'index',
            'search',
            'edit',
            'create',
            'delete'
        ],
        'permissions' => [
            'index'
        ],
        'tracker' => [
            'test',
            'index'
        ],
        'holidays' => [
            'index',
            'new',
            'create',
            'edit',
            'save'
        ],
        'late' => [
            'index',
            'edit',
            'new',
            'search',
            'save',
            'create'
        ],
        'latecomers' => [
            'index',
            'search',
            'delete'
        ]
    ]
]);