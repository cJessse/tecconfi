<?php

require_once 'conexao.php';

$sql = "SELECT * FROM orcamentos ORDER BY id DESC";
$qry = $con->prepare($sql);
$qry->execute();

$registros = $qry->fetchAll(PDO::FETCH_OBJ);
echo json_encode($registros);
