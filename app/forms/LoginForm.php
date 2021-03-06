<?php

namespace Timetracker\Forms;

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Email as EmailText;
use Phalcon\Forms\Element\Password;
use Phalcon\Forms\Element\Submit;
use Phalcon\Forms\Element\Check;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Email;
use Phalcon\Validation\Validator\Identical;

/**
 * Timetracker\Forms\LoginForm
 * @package Timetracker\Forms
 */

class LoginForm extends Form
{

    public function initialize()
    {
        // Email
        $email = new EmailText('email', [
            'placeholder' => 'Email',
            'required' => 'required'
        ]);
        $email->setLabel('Email');
        
        $email->addValidators([
            new PresenceOf([
                'message' => 'The e-mail is required'
            ]),
            new Email([
                'message' => 'The e-mail is not valid'
            ])
        ]);

        $this->add($email);

        // Password
        $password = new Password('password', [
            'placeholder' => 'Password',
            'required' => 'required'
        ]);
        $password->setLabel('Password');

        $password->addValidator(new PresenceOf([
            'message' => 'The password is required'
        ]));

        $password->clear();

        $this->add($password);

        // Remember
        $remember = new Check('remember', [
            'value' => 'yes'
        ]);
        
        $remember->setLabel('Remember me');
        
        $this->add($remember);

        // CSRF
        $csrf = new Hidden('csrf');

        $csrf->addValidator(new Identical([
            'value' => $this->security->getSessionToken(),
            'message' => 'CSRF validation failed'
        ]));

        $csrf->clear();

        $this->add($csrf);
       
        $this->add(new Submit('go',[
            'value' => "Sign in"
        ]));
    }
}
