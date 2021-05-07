<?php

namespace Timetracker\Controllers;

use Timetracker\Models\Users;

class IndexController extends ControllerBase
{

    public function indexAction()
    {
        $users = Users::findfirst(1)->toArray();

        $this->view->setVar('users', $users);
    }

}

