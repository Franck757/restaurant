<?php
class LoginController
{
  public function httpGetMethod(Http $http, array $queryFields)
  {

  }


  public function httpPostMethod(Http $http, array $formFields)
  {
    $m = new LoginModel();
    $login = $m -> loginUser($formFields['pseudo']);

    $isPasswordCorrect = password_verify($formFields['password'],substr($login['password'],0,60));

      if(!$login){
        echo 'Mauvais identifiant';
      }else{
        if($isPasswordCorrect){
          $session = new UserSession();
          $connected = $session->create($login['id'], $login['pseudo']);
          echo 'Vous êtes connecté ' . $login['pseudo'];
        }else{
        echo 'Mauvais identifiant ou mot de passe!';
        }
      }


}
}
