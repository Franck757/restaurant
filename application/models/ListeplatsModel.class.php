<?php

class ListeplatsModel
{
  public function findAllplat(string $categorie)
  {
      $db = new Database();
      $result =
      'SELECT *
       FROM carte
       WHERE categorie = ?';

      return $db -> query($result,[$categorie]);
   }
}

 ?>
