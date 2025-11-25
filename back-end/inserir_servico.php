<?php

require_once 'conexao.php';

$titulo = $_GET['titulo'];
$descricao = $_GET['descricao'];
$preco = $_GET['preco'];
$imagem = isset($_GET['imagem']) ? $_GET['imagem'] : '';

$sql = "INSERT INTO servicos (titulo, descricao, preco, imagem, curtidas) 
        VALUES (:titulo, :descricao, :preco, :imagem, 0)";

$qry = $con->prepare($sql);
$qry->bindParam(":titulo", $titulo, PDO::PARAM_STR);
$qry->bindParam(":descricao", $descricao, PDO::PARAM_STR);
$qry->bindParam(":preco", $preco, PDO::PARAM_STR);
$qry->bindParam(":imagem", $imagem, PDO::PARAM_STR);

if ($qry->execute()) {
    echo json_encode([
        "sucesso" => true, 
        "mensagem" => "Serviço cadastrado com sucesso!",
        "id" => $con->lastInsertId()
    ]);
} else {
    echo json_encode([
        "sucesso" => false, 
        "mensagem" => "Erro ao cadastrar serviço."
    ]);
}
