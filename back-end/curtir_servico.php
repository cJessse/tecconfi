<?php

require_once 'conexao.php';

$id = $_GET['id'];

$sql = "UPDATE servicos SET curtidas = curtidas + 1 WHERE id = :id";
$qry = $con->prepare($sql);
$qry->bindParam(":id", $id, PDO::PARAM_INT);

if ($qry->execute()) {
    $sqlSelect = "SELECT curtidas FROM servicos WHERE id = :id";
    $qrySelect = $con->prepare($sqlSelect);
    $qrySelect->bindParam(":id", $id, PDO::PARAM_INT);
    $qrySelect->execute();
    $resultado = $qrySelect->fetch(PDO::FETCH_OBJ);
    
    echo json_encode([
        "sucesso" => true, 
        "mensagem" => "Curtida registrada com sucesso!",
        "curtidas" => $resultado->curtidas
    ]);
} else {
    echo json_encode([
        "sucesso" => false, 
        "mensagem" => "Erro ao registrar curtida."
    ]);
}
