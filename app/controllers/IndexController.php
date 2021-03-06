<?php


namespace Timetracker\Controllers;

/**
 * Display the default index page.
 * Timetracker\Controllers\IndexController
 * @package Timetracker\Controllers
 */
class IndexController extends ControllerBase
{
    /**
     * Default action. Set the public layout (layouts/public.volt)
     */
    public function indexAction()
    {
        $this->view->setVar('logged_in', is_array($this->auth->getIdentity()));
        $this->view->setTemplateBefore('public');
    }
}
