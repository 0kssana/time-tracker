<?php

namespace Timetracker\Models;

use Phalcon\Mvc\Model;
use Phalcon\Validation;
use Phalcon\Validation\Validator\Uniqueness;

/**
 * All the users registered in the application
 * Timetracker\Models\Users
 * @method static Users findFirstById($id)
 * @method static Users findFirstByEmail($email)
 * @package Timetracker\Models
 */
class Users extends Model
{
    /** @var integer */
    public $id;

    /** @var string */
    public $name;

    /** @var string */
    public $email;

    /** @var string */
    public $password;

    /** @var string */
    public $mustChangePassword;

    /** @var string */
    public $profilesId;

    /** @var string */
    public $banned;

    /** @var string */
    public $suspended;

    /** @var string */
    public $active;

    /**
     * Before create the user assign a password
     */
    public function beforeValidationOnCreate()
    {

        $this->active = 'Y';
        // The account is not suspended by default
        $this->suspended = 'N';
        $this->mustChangePassword = 'N';
        // The account is not banned by default
        $this->banned = 'N';
    }

    /**
     * Validate that emails are unique across users
     */
    public function validation()
    {
        $validator = new Validation();

        $validator->add('email', new Uniqueness([
            "message" => "The email is already registered"
        ]));

        return $this->validate($validator);
    }

    public function initialize()
    {
        $this->belongsTo('profilesId', __NAMESPACE__ . '\Profiles', 'id', [
            'alias' => 'profile',
            'reusable' => true
        ]);

        $this->hasMany('id', __NAMESPACE__ . '\SuccessLogins', 'usersId', [
            'alias' => 'successLogins',
            'foreignKey' => [
                'message' => 'User cannot be deleted because he/she has activity in the system'
            ]
        ]);

        $this->hasMany('id', __NAMESPACE__ . '\PasswordChanges', 'usersId', [
            'alias' => 'passwordChanges',
            'foreignKey' => [
                'message' => 'User cannot be deleted because he/she has activity in the system'
            ]
        ]);

        $this->hasMany('id', __NAMESPACE__ . '\ResetPasswords', 'usersId', [
            'alias' => 'resetPasswords',
            'foreignKey' => [
                'message' => 'User cannot be deleted because he/she has activity in the system'
            ]
        ]);
    }
}
