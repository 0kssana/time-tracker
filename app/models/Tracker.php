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
        $this->belongsTo("user_id", 'Users', "id");
        $this->hasMany("id", 'Users', "user_id");
    }

    public function setSchema($string)
    {
    }


}