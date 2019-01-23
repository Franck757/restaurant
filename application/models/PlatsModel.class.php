<?php

class PlatsModel
{
  public function findOneplat(int $id)
  {
      $db = new Database();
      $result =
      'SELECT *
      FROM carte
      WHERE id = ?';

      return $db -> queryOne($result,[$id]);
   }
}

 ?>
