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
      header("Location: newuser");
    } else {
      $userModel = new NewuserModel;
      $err = $userModel->createUser($formFields);
      header("Location: http://localhost/restaurant/index.php"); //Redirection HTTP
    }
  }
}

?>
