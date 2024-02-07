/*Seu desafio de hoje é criar os destinos possíveis de um jogo, em que o usuário consiga escolher:

1. Se quer seguir para área de Front-End ou seguir para a área de Back-End.

2. Caso esteja na área de Front-End, se quer aprender React ou aprender Vue. Caso esteja na área de Back-End, 
poderá aprender C# ou aprender Java.

3. Depois, independente das escolhas anteriores, o usuário poderá escolher entre seguir se especializando 
na área escolhida ou seguir se desenvolvendo para se tornar Fullstack. Você deve exibir na tela uma mensagem 
específica para cada escolha.

4. Por fim, pergunte quais são as tecnologias nas quais a pessoa gostaria de se especializar ou de conhecer. 
Aqui, a pessoa pode responder N tecnologias, uma de cada vez. Então, enquanto ela continuar respondendo ok 
para a pergunta: “Tem mais alguma tecnologia que você gostaria de aprender?”, continue apresentando para ela o 
Prompt, para que ela complete o nome da tecnologia em questão. E, logo depois, apresente uma mensagem comentando
algo sobre a linguagem inserida.*/

var area;
var areaEscolhida;
var especializacao;
var decisaoJornada;
var tecnologia;
var continuar;

alert("Olá! Vamos descobrir qual caminho você quer seguir na área de programação.");

do {
    area = prompt("Você quer seguir para área de Front-End (Digite 1) ou seguir para a área de Back-End? (Digite 2)");
    if (area == 1) {
        do {
            alert("Muito bem! Você escolheu seguir para a área de Front-End.");
            areaEscolhida = "Front-End";
            especializacao = prompt("Você quer aprender React (Digite 1) ou aprender Vue (Digite 2)?");
            if (especializacao == 1) {
                alert("Excelente escolha! React é uma das tecnologias mais utilizadas no mundo.");
            } else if (especializacao == 2) {
                alert("Excelente escolha! Vue é uma das tecnologias mais utilizadas no mundo.");
            } else {
                alert("Resposta inválida!");
            }
        } while (especializacao != 1 && especializacao != 2);
    } else if (area == 2) {
        do {
            alert("Muito bem! Você escolheu seguir para a área de Back-End.");
            areaEscolhida = "Back-End";
            especializacao = prompt("Você quer aprender C# (Digite 1) ou aprender Java (Digite 2)?");
            if (especializacao == 1) {
                alert("Excelente escolha! C# é uma das tecnologias mais utilizadas no mundo.");
            } else if (especializacao == 2) {
                alert("Excelente escolha! Java é uma das tecnologias mais utilizadas no mundo.");
            } else {
                alert("Resposta inválida!");
            }
        } while (especializacao != 1 && especializacao != 2);
    } else {
        alert("Resposta inválida!");
    }
} while (area != 1 && area != 2);

do {
    jornada = prompt("Você quer seguir se especializando na área escolhida (Digite 1) ou seguir se desenvolvendo para se tornar Fullstack (Digite 2)?");
    if (jornada == 1) {
        alert("Muito bem! Você será um Dev " + areaEscolhida + " incrível!");
    } else if (jornada == 2) {
        alert("Parabéns! Espero que seu caminho para se tornar Fullstack seja incrível.");
    } else {
        alert("Resposta inválida!");
    }
} while (jornada != 1 && jornada != 2);

function hasText(input) {
    return typeof input === 'string' && input.trim().length > 0;
}

do {
    tecnologia = prompt("Há alguma tecnologia na qual você gostaria de se especializar ou de conhecer? Se não houver, digite 1. Se houver, digite o nome da tecnologia.");
    if (tecnologia == 1) {
        alert("Muito bem! Continue estudando e você terá muito sucesso.");
    } else if (hasText(tecnologia)) {
        alert("Muito bem! " + tecnologia + " é uma das tecnologias mais utilizadas no mundo.");
        do {
            continuar = prompt("Tem mais alguma tecnologia que você gostaria de aprender? Responda com o número 1 para SIM ou 2 para NÃO.");
            if (continuar == 1) {
                tecnologia = prompt("Digite o nome da tecnologia.");
                alert("Muito bem! " + tecnologia + " é uma das tecnologias mais utilizadas no mundo.");
            } else if (continuar == 2) {
                alert("Muito bem! Continue estudando e você terá muito sucesso.");
            } else {
                alert("Resposta inválida!");
                continuar = 1;
            }
        } while (continuar == 1);
    } else {
        alert("Resposta inválida!");
    }
} while (tecnologia != 1 && !hasText(tecnologia));

alert("Tchau e boa sorte! :)");