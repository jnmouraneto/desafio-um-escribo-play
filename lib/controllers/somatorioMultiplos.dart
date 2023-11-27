String somatorioMultiplos(int numero) {
  int somatorio = 0;
  String numeros = '';

  for (int i = 1; i < numero; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      somatorio += i;
      numeros =  numeros + '$i ';
    }
  }

  return 'Os números são: $numeros. \nO somatório é: $somatorio';
}
