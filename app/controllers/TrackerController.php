<?php

use Phalcon\Mvc\Controller;

class TrackerController extends ControllerBase
{
    public function indexAction()
    {
    }

    public function staffAction()
    {
        $tracker = new Tracker();

        if (isset($_POST['start']))
        {
            $date = new DateTime('now', new DateTimeZone('Asia/Bishkek'));
            $start_time = $date->format('H:i');
            $tracker->start_time = $start_time;
            $tracker->save();
        }

        if (isset($_POST['stop']))
        {
            $id = Tracker::find();
            $id_count = count($id);
            $date = new DateTime('now', new DateTimeZone('Asia/Bishkek'));
            $end_time = $date->format('H:i');
            $tracker = Tracker::findFirst("id = $id_count");
            $tracker->end_time = $end_time;


            $tracker->update();
        }
    }
}