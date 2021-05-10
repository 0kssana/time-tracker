<?php

namespace Timetracker\Controllers;

use Phalcon\Mvc\Controller;


class TrackerController extends ControllerBase
{


    public function indexAction()
    {

        $this->assets->addJs('js/main.js');
    }

    public function testAction()
    {
        $userTest = 1;
        $state = "";
        if(isset($_POST['state'])){
            $state = $_POST['state'];
        }
        $date = new DateTime('now', new DateTimeZone('Asia/Bishkek'));
        $time_now = $date->format('H:i:s');
        if($state == "start"){

            $time = new Time();
            $time->started_time = $time_now;
            $time->state = $state;
            $time->save();
        }else if($state == "stop"){
            $time = Time::findFirst("state = 'start'");
            $time->stopped_time = $time_now;
            $time->state = 'stop';
            $time->update();
        }


        $time = Time::find();
        $time->toArray();
        return json_encode($time);
    }


    public function staffAction()
    {

        $time = new Time();
        if (isset($_POST['start'])) {
            $date = new DateTime('now', new DateTimeZone('Asia/Bishkek'));
            $start_time = $date->format('H:i:s');

            $time->started_time = $start_time;

            if ($time->save() === false) {
                $messages = $time->getMessages();

                foreach ($messages as $message) {
                    echo $message, "\n";
                }

            } else {
                print_die(132);

            }
        } elseif (isset($_POST['stop'])) {
            $date = new DateTime('now', new DateTimeZone('Asia/Bishkek'));
            $stop_time = $date->format('H:i:s');

            $time->stop_time = $stop_time;
            $time->save();
            if ($time->save() === false) {
                echo "didnt wrote \n";
                $messages = $time->getMessages();

                foreach ($messages as $message) {
                    echo $message, "\n";
                }


            } else {

                return $this->response->redirect($this->request->getHTTPReferer());

            }
        }

    }




}