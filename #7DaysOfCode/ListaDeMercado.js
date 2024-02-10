/* [...] você deve criar um programa em Javascript que perguntará se você deseja adicionar uma comida na sua 
lista de compras, e você deve poder responder com sim ou não.

Em seguida, ele perguntará qual comida você deseja inserir, e você digitará o nome dela, como por exemplo batata.

Depois, ele deverá perguntar em qual categoria essa comida se encaixa, com algumas opções já pré-definidas, 
como frutas, laticínios, congelados, doces e o que mais você achar interessante. Assim, você poderá separar 
tudo no seu devido grupo.

Por fim, caso você não queira mais adicionar nada na lista de compras e responder não na primeira pergunta, ele 
irá exibir uma lista com todos os itens agrupados [...]*/

var listaDeCompras = [];
var frutas = [];
var laticinios = [];
var congelados = [];
var doces = [];
var vegetais = [];
var bebidas = [];
var comidas = [];
var outros = [];

alert("Bem-vindo à sua lista de compras! Vamos começar a adicionar os itens que você deseja comprar.");

do {
    var adicionarComida = prompt("Deseja adicionar uma comida na sua lista de compras? (1 - Sim ou 2 - Não)");
    if (adicionarComida == 1) {
        var comida = prompt("Qual comida você deseja inserir?");
        listaDeCompras.push(comida);

        var categoria = prompt("Em qual categoria essa comida se encaixa? (1 - Frutas, 2 - Laticínios, 3 - Congelados, 4 - Doces, 5 - Vegetais, 6 - Bebidas, 7 - Comidas, 8 - Outros)");
        if (categoria == 1) {
            frutas.push(comida);
        } else if (categoria == 2) {
            laticinios.push(comida);
        } else if (categoria == 3) {
            congelados.push(comida);
        } else if (categoria == 4) {
            doces.push(comida);
        } else if (categoria == 5) {
            vegetais.push(comida);
        } else if (categoria == 6) {
            bebidas.push(comida);
        } else if (categoria == 7) {
            comidas.push(comida);
        } else if (categoria == 8) {
            outros.push(comida);
        } else {
            alert("Opção inválida. Tente novamente.");
        }

    } else if (adicionarComida == 2){
        alert("Lista de compras: " + listaDeCompras + "\nFrutas: " + frutas + "\nLaticínios: " + laticinios + "\nCongelados: " + congelados + "\nDoces: " + doces + "\nVegetais: " + vegetais + "\nBebidas: " + bebidas + "\nComidas: " + comidas + "\nOutros: " + outros);
    } else {
        alert("Opção inválida. Tente novamente.");
        adicionarComida = 1;
    }
} while (adicionarComida == 1);