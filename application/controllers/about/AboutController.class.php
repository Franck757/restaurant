<?php

class AboutController
{

  public function httpGetMethod(Http $http, array $queryFields)
  {
    return [
      'message' => 'bonjour, bienvenue sur le site du restaurant'
    ];
  }



}




 ?>
