<?php

namespace Timetracker\Controllers;

use Phalcon\Mvc\Controller;
use Timetracker\Models\Tracker;

class TrackerController extends ControllerBase
{
    public function indexAction()
    {
//        print_die('nh');
//        $this->assets->addJs('js/main.js');
    }

    public function testAction()
    {
//        return json_encode(123);
        $user_id = '';
        if ($this->session->has('id')) {
            // Получение значения
            $user_id = $this->session->get('id');
        }

        $state = "";
        if (isset($_POST['state'])) {
            $state = $_POST['state'];
        }
        $time_now = date("H:i");

        if ($state == "start")
        {
            $time = new Tracker();
            $time->start_time = $time_now;
            $time->state = $state;
            $time->user_id = $user_id;
            $time->save();
        } else if ($state == "stop")
        {

            $time = Tracker::findFirst("state = 'start'");
            $time->end_time = $time_now;
            $time->state = 'stop';
            $time->update();
        }

        $time = Tracker::find();
        return json_encode($time);
    }

    public function timesAction()
    {
        $time = Tracker::find();
        $time->toArray();
        print_die($time->toArray());
    }

    public function staffAction()
    {
        $x = date("H:i");
        print_die($x);

        $time = new Tracker();
    }
}