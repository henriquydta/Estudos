/*
Você deve criar um programinha que comece com um valor específico pré-definido entre 0 a 10 para o número que você 
vai adivinhar (7, por exemplo).

Em seguida, o programa vai perguntar para você qual o valor que você deseja chutar e, caso você acerte, ele irá te 
parabenizar. Caso erre, ele vai te dar mais 2 tentativas.

No fim, caso você não acerte nenhuma vez, ele vai imprimir qual era o número inicial.

Depois que o programinha estiver funcionando, tente usar um número randômico em vez de um número pré-definido.
*/

//math.random() retorna um número decimal aleatório entre 0.0 e pouco menos que 11
//math.floor() arredonda o número decimal para baixo até o número inteiro mais próximo
var numero = Math.floor(Math.random() * 11);
var tentativas = 3;
var chute;

alert("Vamos jogar um jogo de adivinhação! Tente adivinhar o número que estou pensando entre 0 e 10.");
while (tentativas > 0) {
    chute = prompt("Qual número você acha que é?");
    if (chute == numero) {
        alert("Uau! Você acertou! Parabéns :D");
        tentativas = 0;
    } else if (tentativas == 1) {
        alert("Você errou todas as tentativas! O número era " + numero + ".");
        tentativas = 0;
    } else if (tentativas >= 1) {
        tentativas--;
        alert("Você errou! Você tem mais " + tentativas + " tentativa(s).");
    }
}