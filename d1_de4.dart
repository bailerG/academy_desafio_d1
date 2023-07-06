void main() {
  final dataAtual = DateTime(2022, 09, 05);
  final qtdDias = 18;

  final dataFinal = somaDias(dataAtual, qtdDias);
  print("Data atual: ${dataAtual.day}/${dataAtual.month}/${dataAtual.year}");
  print("Data calculada:${dataFinal.day}/${dataFinal.month}/${dataFinal.year}");
}

DateTime somaDias(DateTime hoje, int quantidadeDias) {
  DateTime dataIndex = hoje;
  // Enquanto a quantidade de dias for maior que zero,
  // adicionar um dia e verificar se não é fim de semana;
  while (quantidadeDias > 0) {
    final isWeekend = dataIndex.weekday == DateTime.saturday ||
        dataIndex.weekday == DateTime.sunday;
    dataIndex = dataIndex.add(Duration(days: 1));
    if (!isWeekend) {
      // Se não for fim de semana, reduzir 1 da quantidade de dias;
      quantidadeDias--;
    }
  }
  // Retorna a data final;
  return dataIndex;
}
