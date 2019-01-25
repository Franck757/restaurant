<?php

class HomeController
{
  public function httpGetMethod(Http $http, array $queryFields)
  {
    $session = new UserSession();
    return [
      'pseudo' => $session->getPseudo()
    ];

  }

  public function httpPostMethod(Http $http, array $formFields)
  {

  }
}
