<?php
require __DIR__ . '/autoload.php';

$view = new \App\View();
$view->news = App\Models\News::findAll();

$view->display( __DIR__.'/App/templates/index.php');

/*include __DIR__.'/App/templates/index.php';
$users = User::findAll();
$us = new User();
$us->name = "Vasya";
$us->email = "Vasya@mail.ru";
$us->insert();*/

//$users2 = \App\Models\User::findById('1');
//var_dump($users);

//var_dump($users2);