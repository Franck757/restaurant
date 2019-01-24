<?php

class UserController
{

  public function httpGetMethod(Http $http, array $queryFields)
  {
    //include_once "database.php";

    $userPage = new UserModel;
    $user = $userPage->findUser($_GET['id']);

    return ['user' => $user];
  }
}

?>
