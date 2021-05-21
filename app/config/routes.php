<?php
use Phalcon\Mvc\Router;

// Create the router
$router = new Router();

$router->add('/about', [
    'controller' => 'about',
    'action' => 'index',
]);

$router->add('/login', [
    'controller' => 'session',
    'action' => 'login',
]);

$router->add('/logout', [
    'controller' => 'session',
    'action' => 'logout',
]);

$router->add('/tracker', [
    'controller' => 'tracker',
    'action' => 'index',
]);

$router->add('/user', [
    'controller' => 'users',
    'action' => 'index',
]);

$router->add('/create', [
    'controller' => 'users',
    'action' => 'create',
]);

$router->add('/settings', [
    'controller' => 'users',
    'action' => 'changePassword',
]);

$router->add('/edit/{user_id}', [
    'controller' => 'users',
    'action' => 'edit',
]);

$router->add('/update/{time_id}', [
    'controller' => 'users',
    'action' => 'update',
]);

$router->add('/time/{user_id}', [
    'controller' => 'users',
    'action' => 'time',
]);

$router->add('/save', [
    'controller' => 'users',
    'action' => 'save',
]);

$router->add('/search', [
    'controller' => 'users',
    'action' => 'search',
]);

$router->add('/permissions', [
    'controller' => 'permissions',
    'action' => 'index',
]);

$router->add('/holidays', [
    'controller' => 'holidays',
    'action' => 'index',
    ]);

$router->add('/late', [
    'controller' => 'late',
    'action' => 'index',
]);
$router->add('/latecomers', [
    'controller' => 'latecomers',
    'action' => 'index',
]);
return $router;
