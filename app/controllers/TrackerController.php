<?php
//
//namespace Timetracker\Controllers;
//
//use Phalcon\Mvc\Controller;
//use Timetracker\Models\Tracker;
//
//class TrackerController extends ControllerBase
//{
//    public function indexAction()
//    {
//
//    }
//
//    public function testAction()
//    {
//
//        $user_id = '';
//        if ($this->session->has('id')) {
//            // Получение значения
//            $user_id = $this->session->get('id');
//        }
//
//        $state = "";
//        if (isset($_POST['state'])) {
//            $state = $_POST['state'];
//        }
//        $time_now = date("H:i");
//
//        if ($state == "start")
//        {
//            $time = new Tracker();
//            $time->start_time = $time_now;
//            $time->state = $state;
//            $time->user_id = $user_id;
//            $time->save();
//        } else if ($state == "stop")
//        {
//
//            $time = Tracker::findFirst("state = 'start'");
//            $time->end_time = $time_now;
//            $time->state = 'stop';
//            $time->update();
//        }
//
//        $time = Tracker::find();
//        return json_encode($time);
//    }
//
////    public function timesAction()
////    {
////        $time = Tracker::find();
////        $time->toArray();
////        print_die($time->toArray());
////    }
////
////    public function staffAction()
////    {
////        $x = date("H:i");
////        print_die($x);
////
////        $time = new Tracker();
////    }
//}


namespace Timetracker\Controllers;

//use Phalcon\Mvc\Controller;
use http\Client\Curl\User;
use Timetracker\Models\TimeData;
use Timetracker\Models\Users;
use DateTime;
use DateTimeZone;


class TrackerController extends ControllerBase
{
    public function indexAction()
    {

        $userId = '';
        if ($this->session->has('id')) {
            // Получение значения
            $userId = $this->session->get('id');
        }
        $dates = [];
        for ($i = 1; $i <= date('t'); $i++) {
            // add the date to the dates array
            $dates[] = date('Y') . "-" . date('m') . "-" . str_pad($i, 2, '0', STR_PAD_LEFT);
        }
        $users = Users::find();
        $this->view->setVars(
            [
                'dates' => $dates,
                'userId' => $userId,
                'users' => $users,
            ]

        );
        $this->assets->addJs('js/main.js');
    }

    public function testAction()
    {
        $user_id = '';
        if ($this->session->has('id')) {
            // Получение значения user id
            $user_id = $this->session->get('id');
        }
        $state = "";
        if (isset($_POST['state'])) {
            $state = $_POST['state'];
        }
        $date = new DateTime('now', new DateTimeZone('Asia/Bishkek'));
        $timeNow = $date->format('H:i');
        $today = $date->format("Y-m-d ");
        if ($state == "start") {
            $time = new TimeData();
            $time->start_time = $timeNow;
            $time->state = $state;
            $time->user_id = $user_id;
            $time->date = $today;
            $time->save();
            $this->session->set('last_time_id', $time->id);
        } else if ($state == "stop") {
            $last_id = $this->session->get('last_time_id');
            $time = TimeData::findFirst([
                'conditions' => 'id = :id:',
                'bind' => [
                    'id' => $last_id
                ]
            ]);
            $time->end_time = $timeNow;
            $time->state = 'stop';
            $time->update();

            $time = TimeData::find();
            $last = $time->getLast();
            $start = $last->start_time;
            $stop = $last->end_time;
            $work_time = (strtotime($start) - strtotime($stop)) / 60;
            $time = TimeData::find([
                'conditions' => 'user_id = :id:',
                'bind' => [
                    'id' => $user_id
                ]
            ]);
            $sum = 0;
            foreach ($time as $item) {
                $sum = $sum + intval($item->work_time);
            }
            $hours = TimeData::changeFormatTime($sum);
//        print_die($hours);
            $last->work_time = abs($work_time);
            $last->total_time = $hours;
            $last->update();
        }
        return json_encode($time);
    }

    public function staffAction()
    {


        $time = Time::find();
        $last = $time->getLast();
        $start = $last->started_time;
        $stop = $last->stopped_time;
        $result = (strtotime($start) - strtotime($stop)) / 60;
        print_die($result);

           $time = new Time();
        if (isset($_POST['start'])) {
            $date = new DateTime('now', new DateTimeZone('Asia/Bishkek'));
            $start_time = $date->format('H:i:s');
//            print_die($start_time);

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