//Funções
function somar(a, b){
    return a + b;
}

const dividir = function (a, b){ //lambda funcition
    return a / b
}

function multiplicar(a, b){
    return a * b
}

const subtrair = (a, b) => a - b //arrow function

console.log(somar(50, 50), dividir(10, 5), subtrair(7, 2), multiplicar(8, 10));

function calculadora(operacao, a, b) {
    switch (operacao) {
        case 'somar':
            console.log(somar(a, b))
            break
        case 'dividir':
            console.log(dividir(a, b))
            break
        case 'subtrair':
            console.log(subtrair(a, b))
            break
        case 'multiplicar':
            console.log(multiplicar(a, b))
            break
        default:
            console.log("Operação inexistente")
            break
    }
    return
}
    
calculadora('somar', 50, 50)
calculadora('dividir', 10, 5)
calculadora('subtrair', 7, 2)
calculadora('multiplicar', 8, 10)