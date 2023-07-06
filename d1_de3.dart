// Tempo total: 48:25,02
const consoantes = 'bcdfghjklmnpqrstvwxyz';
void main() {
  final texto =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit? Nam venenatis nunc et posuere vehicula! Mauris lobortis quam id lacinia porttitor.";
  //
  final textoTratado = tratarTexto(texto);

  print("""
  Paragrafo: $texto
  Numero de palavras: ${contaPalavras(textoTratado)}
  Tamanho do texto: ${contaLetras(textoTratado)}
  Numero de frases: ${contaFrases(textoTratado)}
  Numero de vogais: ${contaVogais(textoTratado)}
  Consoantes encontradas: ${consoantesPresentes(textoTratado)}
  """);
}

// Trata o texto, deixando-o limpo e todo em minúsculo;
String tratarTexto(String texto) {
  String textoTratado = texto.trim();
  textoTratado = textoTratado.toLowerCase();
  return textoTratado;
}

// Conta as palavras baseando-se na Expressão Regular;
int contaPalavras(String texto) {
  final RegExp regExp = RegExp(r"[\w-._]+");
  final contador = regExp.allMatches(texto);
  return contador.length;
}

// Retorna a quantidade de caracteres do texto;
int contaLetras(String texto) {
  return texto.length;
}

// Conta o numero de frases considerando vários tipos de pontuação;
int contaFrases(String texto) {
  int contador = 0;

  final RegExp regExp = RegExp(r'[.!?]');
  final frases = texto.split(regExp);
  for (final frase in frases) {
    if (frase.isNotEmpty) {
      contador++;
    }
  }
  return contador;
}

// Conta o numero de vogais existentes no texto;
int contaVogais(String texto) {
  RegExp regex = RegExp('[aeiou]');
  final percorreTexto = regex.allMatches(texto);
  final contador = percorreTexto.length;
  return contador;
}

// Constrói uma string com as consoantes existentes no texto sem repeti-las;
String consoantesPresentes(String texto) {
  final consoantesNoTexto = <String>{};

  for (final letra in texto.runes) {
    final caractere = String.fromCharCode(letra);
    final isConsoante = consoantes.contains(caractere);
    if (!isConsoante) {
      continue;
    }
    final consoantesEncontradas = consoantesNoTexto.contains(caractere);
    if (!consoantesEncontradas) {
      consoantesNoTexto.add(caractere);
    }
  }
  final emOrdem = (consoantesNoTexto.toList())..sort();
  return emOrdem.join(", ");
}
