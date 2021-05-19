<?php


namespace Timetracker\Controllers;

use Timetracker\Models\Users;
use Timetracker\Forms\LoginForm;
use Timetracker\Exception\Exception;
use Timetracker\Models\ResetPasswords;

/**
 * Controller used handle non-authenticated session actions like login/logout, user signup, and forgotten passwords
 * Timetracker\Controllers\SessionController
 * @package Timetracker\Controllers
 */
class SessionController extends ControllerBase
{
    /**
     * Default action. Set the public layout (layouts/public.volt)
     */
    public function initialize()
    {
        $this->view->setTemplateBefore('public');
    }

    public function indexAction()
    {
    }

    public function loginAction()
    {
        $form = new LoginForm();


        try {
            if (!$this->request->isPost()) {
                if ($this->auth->hasRememberMe()) {
                    return $this->auth->loginWithRememberMe();
                }
            } else {
                if ($form->isValid($this->request->getPost()) == false) {
                    foreach ($form->getMessages() as $message) {
                        $this->flash->error($message);
                    }
                } else {
                    $this->auth->check([
                        'email' => $this->request->getPost('email'),
                        'password' => $this->request->getPost('password'),
                        'remember' => $this->request->getPost('remember')

                    ]);



                    return $this->response->redirect('/');
                }
            }
        } catch (Exception $e) {
            $this->flash->error($e->getMessage());
        }

        $this->view->form = $form;
    }


    /**
     * Closes the session
     */
    public function logoutAction()
    {
        $this->auth->remove();

        return $this->response->redirect('index');
    }
}
