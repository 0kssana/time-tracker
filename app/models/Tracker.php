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


    public static function changeFormatTime($sum)
    {
        // Total
        if ($sum <= 0) {
            return ' ';
        } else {
            return sprintf("%02d", floor($sum / 60)) . ':' . sprintf("%02d", str_pad(($sum % 60), 2, "0", STR_PAD_LEFT)) . "";
        }
    }

}