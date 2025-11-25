<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$con = new PDO("mysql:host=localhost;dbname=banco_tec;charset=utf8", 
"root", "");
