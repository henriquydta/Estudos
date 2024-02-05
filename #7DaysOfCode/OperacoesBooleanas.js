let numeroUm = 1
let stringUm = '1'
let numeroDois = 30
let stringDois = '30'
let numeroTres = 10
let stringTres = '10'
//var, let, const
//https://www.alura.com.br/artigos/entenda-diferenca-entre-var-let-e-const-no-javascript

//=== Idêntico a
//!== Não idêntico a
//https://www.alura.com.br/artigos/operadores-matematicos-em-javascript
if (numeroUm == stringUm) {
  console.log('As variáveis numeroUm e stringUm tem o mesmo valor, mas tipos diferentes')
} else {
  console.log('As variáveis numeroUm e stringUm não tem o mesmo valor')
}

if (numeroDois === stringDois) {
  console.log('As variáveis numeroDois e stringDois tem o mesmo valor e mesmo tipo')
} else {
  console.log('As variáveis numeroDois e stringDois não tem o mesmo tipo')
}

if (numeroTres == stringTres) {
  console.log('As variáveis numeroTres e stringTres tem o mesmo valor, mas tipos diferentes')
} else {
  console.log('As variáveis numeroTres e stringTres não tem o mesmo valor')
}