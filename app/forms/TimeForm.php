<?php

namespace Timetracker\Forms;

use Phalcon\Forms\Element\AbstractElement;
use Phalcon\Forms\Form;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Forms\Element\Select;

class TimeForm extends Form
{
    public function initialize($entity = null, $options = null)
    {
        // In edition the id is hidden
        if (isset($options['edit'])) {
            $this->add(new Hidden('id'));
        }

        /**
         * UserId time text field
         */
//        $userId = new Select(
//            'userId',
//            Users::find(),
//            [
//                'emptyText'  => 'Select one...',
//                'emptyValue' => '',
//                'useEmpty'   => true,
//                'using'      => [
//                    'id',
//                    'id',
//                ],
//            ]
//        );
//
//        $userId->setLabel('User id');
//        $userId->addValidators([
//            new PresenceOf(['message' => 'userId is required']),
//        ]);
//        $this->add($userId);


        /**
         * Date text field
         */
        $date = new Text('date');
        $date->setLabel('Date');
        $date->addValidators([
            new PresenceOf(['message' => 'Date is required']),
        ]);

        $this->add($date);

        /**
         * Start time text field
         */
        $startTime = new Text('start_time');
        $startTime->setLabel('Start time');
        $startTime->addValidators([
            new PresenceOf(['message' => 'Start time is required']),
        ]);

        $this->add($startTime);

        /**
         * End time text field
         */
        $endTime = new Text('end_time');
        $endTime->setLabel('End time');
        $endTime->addValidators([
            new PresenceOf(['message' => 'End time is required']),
        ]);
        $this->add($endTime);

        /**
         * Total text field
         */
        $total = new Text('total_time');
        $total->setLabel('Total');
        $total->addValidators([
            new PresenceOf(['message' => 'Total is required']),
        ]);
        $this->add($total);

    }

}