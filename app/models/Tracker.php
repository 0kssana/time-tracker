<?php

namespace Timetracker\Models;

use Phalcon\Mvc\Model;

class Tracker extends Model
{
//    public static function findFirst($string)
//    {
//    }

    public function initialize()
    {
        $this->setSchema("time");
        $this->setSource('time_data');
    }

    public function setSchema($string)
    {
    }

}