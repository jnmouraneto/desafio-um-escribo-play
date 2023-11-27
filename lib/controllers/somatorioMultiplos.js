function somatorioMultiplosDeTresOuCinco(numero) {
  let somatorio = 0;

  for (let i = 1; i < numero; i++) {
    if (i % 3 === 0 || i % 5 === 0) {
      somatorio += i;
    }
  }

  return somatorio;
}

// Exemplos de uso
console.log(somatorioMultiplosDeTresOuCinco(10)); // Deve retornar 23
console.log(somatorioMultiplosDeTresOuCinco(11)); // Deve retornar 33
