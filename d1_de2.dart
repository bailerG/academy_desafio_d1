// Tempo total: 4:39,43

void main() {
  final listaCelsius = [0.0, 4.2, 15.0, 18.1, 21.7, 32.0, 40.0, 41.0];

  for (var num in listaCelsius) {
    print(
        "Celsius: $num Fahrenheit: ${converteFahrenheit(num).toStringAsFixed(2)} Kelvin: ${converteKelvin(num).toStringAsFixed(2)}");
  }
}

double converteFahrenheit(double celsius) {
  final fahrenheit = celsius * 1.8 + 32;
  return fahrenheit;
}

double converteKelvin(double celsius) {
  final kelvin = celsius + 273.15;
  return kelvin;
}
