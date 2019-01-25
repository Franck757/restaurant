<?php

class ListeplatsController {

  public function httpGetMethod(Http $http, array $queryFields)
  
  {
    $m = new ListeplatsModel();
    $plat = $m->findAllPlat($queryFields['categorie']); // $_GET

    return ['plat' => $plat];
  }
}

 ?>
