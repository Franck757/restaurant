<?php

class PlatsController {

  public function httpGetMethod(Http $http, array $queryFields)
  {
    $m = new PlatsModel();
    $plat = $m->findOnePlat($queryFields['id']);

    return ['plat' => $plat];
  }
}


 ?>
