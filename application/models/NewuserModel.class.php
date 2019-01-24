<?php

class NewuserModel
{
  public function createUser (array $data)
  {

    $db = new Database();
    $err = $db->executeSql(
      'INSERT INTO `client`(`nom`, `prenom`, `tel`, `pseudo`, `email`,`password`, `adresse`)
      VALUES(:name, :firstname, :tel, :pseudo, :mail, :password, :adresse)',
      [
        'name'       => $data["name"],   //le premier 'name' correspond a "l'étiquette", la VALUES juste au dessus
        'firstname'  => $data["firstname"],
        'tel'        => $data['tel'],
        'pseudo'     => $data["pseudo"],
        'mail'       => $data["email"],
        'password'   => password_hash($data["password"], PASSWORD_DEFAULT),
        'adresse'    => $data['adresse'],
      ]);

      return $err;
    }
  }

  ?>
