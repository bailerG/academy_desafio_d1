import 'dart:math';

void main() {
  final random = Random();
  final listaNomes = [
    'Ana',
    'Maria',
    'Francisco',
    'Joao',
    'Pedro',
    'Gabriel',
    'Rafaela',
    'Marcio',
    'Jose',
    'Carlos',
    'Patricia',
    'Helena',
    'Camila',
    'Mateus',
    'Gabriel',
    'Samuel',
    'Karina',
    'Antonio',
    'Daniel',
    'Joel',
    'Cristiana',
    'Sebastiao',
    'Paula'
  ];
  final listaSobrenomes = [
    'Silva',
    'Souza',
    'Almeida',
    'Azevedo',
    'Braga',
    'Barros',
    'Campos',
    'Cardoso',
    'Costa',
    'Teixeira',
    'Santos',
    'Rodrigues',
    'Ferreira',
    'Alves',
    'Pereira',
    'Lima',
    'Gomes',
    'Ribeiro',
    'Carvalho',
    'Lopes',
    'Barbosa'
  ];
  final nomeGerado = listaNomes[random.nextInt(listaNomes.length)];
  final sobrenomeGerado =
      listaSobrenomes[random.nextInt(listaSobrenomes.length)];

  print("Nome gerado: $nomeGerado $sobrenomeGerado");
}
