<?php

namespace App;


class View implements \Countable
{
    protected $data=[];
    public function __set($name, $value)
    {
        // TODO: Implement __set() method.
        $this->data[$name] = $value;
        echo 'SSSET';
    }
    public function __get($name)
    {
        echo 'GGGGET';
        // TODO: Implement __get() method.
        return $this->data[$name];

    }

    public function display($temp)
    {
        include $temp;
    }
    public function render($temp)
    {
        ob_start();
        foreach ($this->data as $prop => $value){
            $$prop = $value;
        }
        include $temp;
        $content=ob_get_contents();
        ob_end_clean();
        return $content;
    }

    /**
     * Count elements of an object
     * @link http://php.net/manual/en/countable.count.php
     * @return int The custom count as an integer.
     * </p>
     * <p>
     * The return value is cast to an integer.
     * @since 5.1.0
     */
    public function count()
    {
        // TODO: Implement count() method.
        return count($this->data);
    }
}