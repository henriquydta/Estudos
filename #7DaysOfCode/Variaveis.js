alert("Olá!");
var nome;
var idade;
var linguagem;
var resposta;

nome = prompt("- Qual é o seu nome?");
idade = prompt("- Quantos anos você tem?");
linguagem = prompt("- Qual linguagem de programação você está estudando?");

alert("Olá " + nome + ", você tem " + idade + " anos e está aprendendo " + linguagem + ".");

resposta = prompt("Você gosta de estudar " + linguagem + "? Responda com o número 1 para SIM ou 2 para NÃO.");
if (resposta == 1) {
    alert("Muito bom! Continue estudando e você terá muito sucesso.");
} else if (resposta == 2) {
    alert("Ahh que pena... Já tentou aprender outras linguagens?");
} else {
    alert("Resposta inválida!");
    do {
        resposta = prompt("Você gosta de estudar " + linguagem + "? Responda com o número 1 para SIM ou 2 para NÃO.");
        if (resposta == 1) {
          alert("Muito bom! Continue estudando e você terá muito sucesso.");
        } else if (resposta == 2) {
          alert("Ahh que pena... Já tentou aprender outras linguagens?");
        } else {
          alert("Resposta inválida!");
        }
      } while (resposta != 1 && resposta != 2); 
}