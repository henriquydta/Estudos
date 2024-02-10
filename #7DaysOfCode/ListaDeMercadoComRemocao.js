/*Você deverá criar a opção de remover algum item da lista, que será exibida junto à pergunta de 
“você deseja adicionar uma comida na lista de compras”?

A partir daí, caso a pessoa escolha essa opção, o programa irá imprimir os elementos presentes na lista atual, 
e a pessoa deverá escrever qual deles deseja remover.

Depois disso, o programa irá remover o elemento da lista e imprimir a confirmação de que o item realmente 
não está mais lá.

Por fim, ele voltará para o ciclo inicial de perguntas.

Se, na hora de deletar o item, o mesmo não for encontrado na lista, você deverá exibir uma mensagem
avisando isso.

Por exemplo: “Não foi possível encontrar o item dentro da lista!”

Lembre-se que a opção de remover um item só deverá estar disponível a partir do momento que existir ao
menos um elemento dentro da lista de compras.*/

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
    var adicionarComida = prompt("Deseja adicionar ou remover uma comida na sua lista de compras, ou finalizar sua lista? (1 - Adicionar, 2 - Remover, 3 - Finalizar)");
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
    } else if (adicionarComida == 2) {
        if (listaDeCompras.length == 0) {
            alert("Não há itens na lista de compras para remover!");
            adicionarComida = 1;
        } else {
            var aRemover = prompt("Qual item você deseja remover? \nSegue sua lista de compras atualmente:" + listaDeCompras);
            var index = listaDeCompras.indexOf(aRemover);
            if (index !== -1) {
                listaDeCompras.splice(index, 1);
                alert("Item removido com sucesso!");

                var listas = [frutas, laticinios, congelados, doces, vegetais, bebidas, comidas, outros];
                for (var i = 0; i < listas.length; i++) {
                    var indexCategoria = listas[i].indexOf(aRemover);
                    if (indexCategoria !== -1) {
                        listas[i].splice(indexCategoria, 1);
                    }
                }

                alert("Lista de compras atualizada: " + listaDeCompras + "\nFrutas: " + frutas + "\nLaticínios: " + laticinios + "\nCongelados: " + congelados + "\nDoces: " + doces + "\nVegetais: " + vegetais + "\nBebidas: " + bebidas + "\nComidas: " + comidas + "\nOutros: " + outros);
            } else {
                alert("Não foi possível encontrar o item dentro da lista!");
            }
            adicionarComida = 1;
        }
    } else if (adicionarComida == 3) {
        alert("Lista de compras: " + listaDeCompras + "\nFrutas: " + frutas + "\nLaticínios: " + laticinios + "\nCongelados: " + congelados + "\nDoces: " + doces + "\nVegetais: " + vegetais + "\nBebidas: " + bebidas + "\nComidas: " + comidas + "\nOutros: " + outros);
    } else {
        alert("Opção inválida. Tente novamente.");
        adicionarComida = 1;
    }
} while (adicionarComida == 1);