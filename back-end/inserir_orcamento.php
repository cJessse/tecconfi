<?php

require_once 'conexao.php';

$nome = $_GET['nome'];
$email = $_GET['email'];
$telefone = isset($_GET['telefone']) ? $_GET['telefone'] : '';
$servico = $_GET['servico'];
$descricao = isset($_GET['descricao']) ? $_GET['descricao'] : '';

$sql = "INSERT INTO orcamentos (nome, email, telefone, servico, descricao, aprovado) 
        VALUES (:nome, :email, :telefone, :servico, :descricao, 0)";

$qry = $con->prepare($sql);
$qry->bindParam(":nome", $nome, PDO::PARAM_STR);
$qry->bindParam(":email", $email, PDO::PARAM_STR);
$qry->bindParam(":telefone", $telefone, PDO::PARAM_STR);
$qry->bindParam(":servico", $servico, PDO::PARAM_STR);
$qry->bindParam(":descricao", $descricao, PDO::PARAM_STR);

if ($qry->execute()) {
    echo json_encode([
        "sucesso" => true, 
        "mensagem" => "Orçamento enviado com sucesso!",
        "id" => $con->lastInsertId()
    ]);
} else {
    echo json_encode([
        "sucesso" => false, 
        "mensagem" => "Erro ao enviar orçamento."
    ]);
}
