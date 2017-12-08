<?php

require __DIR__ . '/autoload.php';

$users = \App\Models\User::findAll();

$users2 = \App\Models\User::findById('0');
//var_dump($users);

var_dump($users2);