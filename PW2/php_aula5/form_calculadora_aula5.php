
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculadora Aula 5</title>
</head>
<body>
    <form action="resultado_calculadora_aula5.php" method="post">
        <Label for="Digite o primeiro número">Numero 1:</Label>
        <input type="number" name="num1"> 
        <label for="Digite o segundo número">Numero 2:</label>
        <input type="number" name="num2">
        <select value="operacao" name="operacao">
        <option value="somar">+</option>
        <option value="subtrair">-</option>
        <option value="multiplicar">x</option>
        <option value="dividir">/</option>
        <input type="submit" value="calcular">
        <input type="reset" value="limpar">
    </form>
</body>
</html>