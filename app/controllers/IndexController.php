<?php

namespace Timetracker\Controllers;

use Timetracker\Models\Users;

class IndexController extends ControllerBase
{

    public function indexAction()
    {

        $this->view->users = Users::find();

    }

}

