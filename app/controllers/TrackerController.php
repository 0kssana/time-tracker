<?php

namespace Timetracker\Controllers;

use Timetracker\Models\Holidays;
use Timetracker\Models\Latecomers;
use Timetracker\Models\Late;
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

        foreach ($dates as $d){
            $m = intval(date('m', strtotime($d)));
        }

        $mc = Holidays::find([
            'conditions' => 'month = :m:',
            'bind' => [
                'm' => $m,
            ]
        ]);


        $x = Holidays::calc($mc);

        $this->view->setVars(
            [
                'dates' => $dates,
                'userId' => $userId,
                'users' => $users,
                'x' => $x,
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
            //
            $late = Late::findFirst();
            $isExist = Latecomers::findFirst([
                'conditions' => 'user_id = :user_id: AND date = :today:',
                'bind' => [
                    'user_id' => $user_id,
                    'today' => $today,
                ]
            ]);

            if (!count($isExist->date)) {

                if (strtotime($time->start_time) > strtotime($late->late_time)) {
                    $userLate = new Latecomers();
                    $userLate->user_id = $user_id;
                    $userLate->time = $timeNow;
                    $userLate->date = $today;
                    if ($userLate->save() === false) {
                        $messages = $userLate->getMessages();
                        foreach ($messages as $message) {
                            echo $message;
                        }
                    } else {
                        echo "Operation was successful";
                    }
                }

            }


            $time->state = $state;
            $time->user_id = $user_id;
            $time->date = $today;
            $time->save();
            //
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
            $last->work_time = abs($work_time);
            $last->total_time = $hours;
            $last->update();
        }
        return json_encode($time);
    }

}