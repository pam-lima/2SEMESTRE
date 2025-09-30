<?php
class Calculadora {

private $num1;
private $num2;
private $result;

public function mostrarResultado() {
    echo "<br>" .$this -> result."<br>";

}

    public function somar($num1, $num2) {
        return $this-> result = $num1 + $num2;
    }

    public function subtrair($num1, $num2) {
        return $this ->result = $num1 - $num2;
    }

    public function multiplicar($num1, $num2) {
        return $this ->result = $num1 * $num2;
    }

    public function dividir($num1, $num2) {
        if ($b == 0) {
            throw new Exception("Divisão por zero não é permitida.");
        }
        return $this ->result = $num1 / $num2;
    }
}
?>