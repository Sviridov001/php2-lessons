<!DOCTYPE html>
<html lang="en">
</html>
<?php
require __DIR__.'/autoload.php';

$authors = \App\Models\Author::findAll();
var_dump($authors);
echo '=====================';
foreach ($authors as $author){
    echo $author->name;
}
echo '=====================';
$news = \App\Models\News::findAll();
var_dump($news[3]->author);

/*echo '=====================';
$news = \App\Models\User::findAll();
var_dump($news);*/