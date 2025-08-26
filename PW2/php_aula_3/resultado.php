<?php
        $n1 = $_POST["n1"];
        $n2 = $_POST["n2"];
        function soma ($n1, $n2){
            return $n1 + $n2;
        }

        function subtrair ($n1, $n2){
            return $n1 - $n2;
        }

        function multiplicar ($n1, $n2){
            return $n1 * $n2;
        }

        function dividir ($n1, $n2){
            return $n1 / $n2;
        } 

        echo "O resultado da soma é: " .$_POST(soma);
        echo "O resultado da subtração é: " .$_POST(subtrair);
        echo "O resultado da multiplicação é: " .$_POST(multiplicar);
        echo "O resultado da divisão é: " .$_POST(divir);
        ?>

        
