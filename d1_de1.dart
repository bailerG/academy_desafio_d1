// Tempo total: 6:23,10

import 'dart:math';

void main() {
  final listaRaios = [5, 8, 12, 7.3, 18, 2, 25];

  for (final raio in listaRaios) {
    Circulo r = Circulo();
    print(
        "Raio: $raio Area: ${r.area(raio).toStringAsFixed(2)} Perimetro: ${r.perimetro(raio).toStringAsFixed(2)} ");
  }
}

class Circulo {
  double area(raio) {
    final area = pi * (raio * raio);
    return area;
  }

  double perimetro(raio) {
    final perimetro = 2 * pi * raio;
    return perimetro;
  }
}
