<?php

$router = $di->getRouter();

// Define your routes here

$router->add(
    '/user',
    [
        'controller' => 'user',
        'action'     => 'index',
    ]


);

$router->add(
    '/userid/{id}',
    [
        'controller' => 'tracker',
        'action'     => 'times',
    ]
);

$router->handle();
