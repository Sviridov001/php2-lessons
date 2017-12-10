<?php

namespace App;

abstract class Model
{

    const TABLE = '';
    public $id;

    public static function findById($id)
    {
        $db = new Db();
        $res = $db->query(
            'SELECT * FROM ' . static::TABLE . ' WHERE id = ' . $id,
            static::class
        )[0];
        if(empty($res))$res = false;
        return $res;
    }

    public static function findAll()
    {
        $db = new Db();
        return $db->query(
            'SELECT * FROM ' . static::TABLE,
            static::class
        );
    }
    public  function isNew()
    {
        return empty($this->id);
    }
    /**
     * @param $
     */
    public function insert()
    {
        if(!$this->isNew()) return;
        $columns = [];
        $values = [];
        foreach ($this as $k => $v){
           if($k=='id') {
               continue;
           }
           $columns[]=$k;
           $values[':'.$k]=$v;
        }
        var_dump($values);
        var_dump( $columns);
        // INSERT INTO users(user,email) VALUES (:user, :email)
        $sql = 'INSERT INTO ' . static::TABLE . '('.implode(',',$columns).') VALUES ('.implode(',',array_keys($values)).')';

        $db = Db::instanse();
        $db->execute($sql,$values);
    }


}