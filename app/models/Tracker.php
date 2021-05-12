<?php

namespace Timetracker\Models;

use Phalcon\Mvc\Model;

class Tracker extends Model
{
    public function initialize()
    {
        $this->setSchema("timetracker");
        $this->setSource('time');
    }
}