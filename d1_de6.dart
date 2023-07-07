void main() {
  final numeros = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];
  converteNumeros(numeros);
}

void converteNumeros(List<int> listaNumeros) {
  listaNumeros.sort();
  for (final decimal in listaNumeros) {
    final binario = decimal.toRadixString(2);
    final octal = decimal.toRadixString(8);
    final hexadecimal = decimal.toRadixString(16);
    print(
        "Decimal: $decimal, Binário: $binario, Octal: $octal, Hexadecimal: $hexadecimal");
  }
}
