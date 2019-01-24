<?php

class NewuserController
{

  public function httpGetMethod(Http $http, array $queryFields)
  {
    return [
      'newuser' => 'Rejoignez-nous !'
    ];
  }

  public function httpPostMethod(Http $http, array $formFields)
  {
    if (empty($_POST)) {
      header("Location: http://localhost/Restaurant/index.php/newuser");
    } else {
      $userModel = new NewuserModel;
      $err = $userModel->createUser($formFields);
      header("Location: http://localhost/Restaurant/index.php/user?id=$err"); //Redirection HTTP
    }
  }
}

?>
