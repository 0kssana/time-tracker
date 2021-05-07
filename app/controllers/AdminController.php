<?php

namespace Timetracker\Controllers;

use Phalcon\Http\Controller;

class AdminController extends ControllerBase
{
    public function indexAction()
    {
        $this->persistent->conditions = null;
        $this->view->form = new UsersForm();
    }

    public function initialize()
    {
        $this->view->setTemplateBefore('private');
    }


    public function newUserAction()
    {
        $this->tag->setTitle('Страница нового пользователя');
    }

    public function addUserToDbAction()
    {
        if ($this->request->isPost()) {
            $user = new User();
            $user->login = $this->request->getPost('login');
            $user->name = $this->request->getPost('name');
            $user->email = $this->request->getPost('email');
            $user->password = sha1($this->request->getPost('password'));
            $user->role = 1;
            $user->save();

            $this->flash->success('New user saved');
            return $this->dispatcher->forward(
                [
                    "controller" => "admin",
                    "action" => "newUser",
                ]
            );
        }
    }







}