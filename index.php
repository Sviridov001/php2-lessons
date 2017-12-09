<?php

require __DIR__ . '/autoload.php';

$users = \App\Models\User::findAll();

include __DIR__.'/App/templates/index.php';



//$users2 = \App\Models\User::findById('1');
//var_dump($users);

//var_dump($users2);