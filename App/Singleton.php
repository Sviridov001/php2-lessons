<?php

namespace App;

trait Singleton
{
    protected static $instanse;
    protected function __construct()
    {

    }
    public static function instanse()
    {
        if(null == static::$instanse) static::$instanse = new static();
        return static::$instanse;
    }

}
