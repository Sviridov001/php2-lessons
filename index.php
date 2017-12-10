<?php

use App\Models\User;

require __DIR__ . '/autoload.php';

$users = User::findAll();

include __DIR__.'/App/templates/index.php';

$us = new User();
$us->name = "Vasya";
$us->email = "Vasya@mail.ru";
$us->insert();

//$users2 = \App\Models\User::findById('1');
//var_dump($users);

//var_dump($users2);