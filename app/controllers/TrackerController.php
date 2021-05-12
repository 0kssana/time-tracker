<?php

namespace Timetracker\Controllers;

use Phalcon\Mvc\Controller;
use Timetracker\Models\Tracker;
use Timetracker\Models\Users;


class TrackerController extends ControllerBase
{


    public function indexAction()
    {
//        $this->assets
//            ->addJs('js/main.js');

        $this->assets->addJs('js/main.js');
    }

    public function testAction()
    {
//


        $state = "start";
//
////        $state = $_POST['state'];
        if(isset($_POST['state'])){
            $state = $_POST['state'];
        }
        $time_now = date("H:i:s");




        if($state == "start"){

            $time = new Tracker();
            $time->start_time = $time_now;
            $time->state = $state;
//            $time->stopped_time = $stop_time;
            $time->save();
        }else if($state == "stop"){
            $time = Tracker::findFirst("state = 'start'");
            $time->stop_time = $time_now;
            $time->state = 'stop';
            $time->update();
//            return json_encode($time);
            $time = Time::find();
//            $last = $time->getLast();
//            return json_encode($time->stopped_time);

        }
//        print_die(123);

        $time = Tracker::find();
//        $last = $time->getLast();
//        $start = $last->start_time;
//        $stop = $last->stop_time;
//        $result = (strtotime($start) - strtotime($stop) ) / 60;
        return json_encode($time);




//        $this->view->setVars(
//            [
//                'total' => $result
//            ]
//        );

//        print_die($last);
    }
    public function timesAction($id)
    {
//        $this->assets
//            ->addJs('js/main.js');
//        $time = Time::find();
//        $time->toArray();
//        print_die($time->toArray());
//        $this->view->setVars(
//            [
//                'times' => $time
//            ]
//        );





    }

    public function staffAction()
    {
//
//        $x = date("H:i:s");
//        print_die($x);
//
//        $time = new Time();


        $user = Users::find();
        print_die($user->toArray());



//        if (isset($_POST['start'])) {
//            $date = new DateTime('now', new DateTimeZone('Asia/Bishkek'));
//            $start_time = $date->format('H:i:s');
////            print_die($start_time);
//
//            $time->started_time = $start_time;
//
//            if ($time->save() === false) {
//                $messages = $time->getMessages();
//
//                foreach ($messages as $message) {
//                    echo $message, "\n";
//                }
//
//            } else {
////                $this->response->redirect('');
//                print_die(132);
//
//            }
//        } elseif (isset($_POST['stop'])) {
//            $date = new DateTime('now', new DateTimeZone('Asia/Bishkek'));
//            $stop_time = $date->format('H:i:s');
////            print_die($stop_time);
////            $test = intval($this->request->getPost("test"));
////            $test = 46;
////            $time = Time::findFirst("id = $test");
////            print_die($time->toArray());
//            $time->stop_time = $stop_time;
////            $time->stopped_time = $stop_time;
//            $time->save();
//            if ($time->save() === false) {
//                echo "didnt wrote \n";
//                $messages = $time->getMessages();
//
//                foreach ($messages as $message) {
//                    echo $message, "\n";
//                }
//
//
//            } else {
//
//                return $this->response->redirect($this->request->getHTTPReferer());
//
//            }
//        }
//        $this->assets
//            ->addJs('js/main.js');
//
//
////        print_die($name);
//        $robotsParts = $time->getUsers();
//        print_die($robotsParts);
    }




}