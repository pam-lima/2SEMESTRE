<?php
    
require_once "funcoes_calculadora_aula5.php";
$num1 = $_POST['num1'];
$num2 = $_POST['num2'];
$operacao = $_POST['operacao'];
$result = new Calculadora;

switch($operacao){
case "somar":
$result->somar($num1, $num2);
$result->mostrarResultado();
break;

case "subtrair":
$result->subtrair($num1, $num2);
$result->mostrarResultado();
break;

case "multiplicar":
$result->multiplicar($num1, $num2);
$result->mostrarResultado();
break;

case "dividir":
$result->dividir($num1, $num2);
$result->mostrarResultado();
break;

default:
die("Algo deu errado, tente novamente!");
break;
}
?>