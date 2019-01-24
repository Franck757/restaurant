<?php

class UserModel
{
  public function findUser(int $id) : array
  {
    $db = new Database();
    $result = $db->queryOne(
      "SELECT `prenom`, `pseudo`, `password`, `email` FROM `client` WHERE `id` = ?",
      [$id]);
    return $result;
  }
}
  ?>
