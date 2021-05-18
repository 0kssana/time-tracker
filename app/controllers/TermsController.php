<?php

namespace Timetracker\Controllers;

/**
 * Display the terms and conditions page.
 * Timetracker\Controllers\TermsController
 * @package Timetracker\Controllers
 */
class TermsController extends ControllerBase
{
    /**
     * Default action. Set the public layout (layouts/public.volt)
     */
    public function indexAction()
    {
        $this->view->setTemplateBefore('public');
    }
}
