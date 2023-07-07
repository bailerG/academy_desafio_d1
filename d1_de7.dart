void main() {
  final listaNumeros = [
    3,
    17,
    23,
  ];
  print(somaMetodoLista(listaNumeros));
}

int somaFor(List<int> listaNumeros) {
  int soma = 0;
  for (final numero in listaNumeros) {
    soma += numero;
  }
  return soma;
}

int somaWhile(List<int> listaNumeros) {
  int soma = 0;
  int i = 0;
  while (i < listaNumeros.length) {
    soma += listaNumeros[i];
    i++;
  }
  return soma;
}

int somaRecursivo(List<int> listaNumeros) {
  if (listaNumeros.isEmpty) {
    return 0;
  }
  return listaNumeros.first + somaRecursivo(listaNumeros.sublist(1));
}

int somaMetodoLista(List<int> listaNumeros) {
  return listaNumeros.reduce((x, y) => x + y);
}
