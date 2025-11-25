<?php

require_once 'conexao.php';

$id = $_GET['id'];

$sql = "UPDATE orcamentos SET aprovado = 1 WHERE id = :id";
$qry = $con->prepare($sql);
$qry->bindParam(":id", $id, PDO::PARAM_INT);

if ($qry->execute()) {
    echo json_encode([
        "sucesso" => true, 
        "mensagem" => "Orçamento aprovado com sucesso!"
    ]);
} else {
    echo json_encode([
        "sucesso" => false, 
        "mensagem" => "Erro ao aprovar orçamento."
    ]);
}
