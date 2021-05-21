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
        'holidays' => [
            'index'
        ],
        'late' => [
            'index'
        ],
        'latecomers' => [
            'index'
        ],
        'tracker' => [
            'index'
        ]
    ]
]);