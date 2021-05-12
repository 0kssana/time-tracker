<?php

namespace Timetracker\Controllers;

use Phalcon\Mvc\Controller;
use Timetracker\Models\Tracker;
use Timetracker\Models\Users;


class UserController extends ControllerBase
{


    public function indexAction()
    {
//        $this->assets
//            ->addJs('js/main.js');
        $time = Users::find();
//        $time->toArray();
        $this->view->setVars(
            [
                'users' => $time
            ]
        );
//        print_die(23);

    }

}