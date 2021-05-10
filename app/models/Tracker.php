<?php

namespace Timetracker\Models;

use Phalcon\Mvc\Model;

class Tracker extends Model
{
    public function initialize()
    {
        $this->setSource('time');
    }
}