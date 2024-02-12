/*Neste último desafio, a minha proposta para você é: crie a sua própria calculadora, porém com um 
detalhe muito importante: cada operação deverá ser uma função diferente no seu código.

Primeiramente, a pessoa deverá escolher uma opção de operação impressa pelo programa na tela.

Depois, ela deverá inserir os dois valores que deseja utilizar, e o programa imprimirá o resultado da 
operação em questão.

As opções disponíveis deverão ser: soma, subtração, multiplicação, divisão, e sair. Nessa última, o 
programa deverá parar de ser executado, mostrando uma mensagem "Até a próxima".*/

function soma(a, b) {
    return a + b;
}

function subtracao(a, b) {
    return a - b;
}

function multiplicacao(a, b) {
    return a * b;
}

function divisao(a, b) {
    return a / b;
}

do {
    var operacao = prompt("Qual operação você deseja realizar? 1 - Soma, 2 - Subtração, 3 - Multiplicação, 4 - Divisão, 5 - Sair");
    switch (operacao) {
        case "1":
            var a = parseFloat(prompt("Digite o primeiro número:"));
            var b = parseFloat(prompt("Digite o segundo número:"));
            alert("O resultado da soma é: " + soma(a, b));
            break;
        case "2":
            var a = parseFloat(prompt("Digite o primeiro número:"));
            var b = parseFloat(prompt("Digite o segundo número:"));
            alert("O resultado da subtração é: " + subtracao(a, b));
            break;
        case "3":
            var a = parseFloat(prompt("Digite o primeiro número:"));
            var b = parseFloat(prompt("Digite o segundo número:"));
            alert("O resultado da multiplicação é: " + multiplicacao(a, b));
            break;
        case "4":
            var a = parseFloat(prompt("Digite o primeiro número:"));
            var b = parseFloat(prompt("Digite o segundo número:"));
            alert("O resultado da divisão é: " + divisao(a, b));
            break;
        case "5":
            alert("Até a próxima!");
            break;
        default:
            alert("Opção inválida. Tente novamente.");
    }
} while (operacao != 5)
