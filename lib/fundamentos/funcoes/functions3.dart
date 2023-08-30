import 'package:dio_curso_dart/fundamentos/funcoes/utils.dart' as utils;

void functions3() {
  var line = utils.lerConsole("Digite um número ou 'S' para sair");
  List<double> numeros = [];

  while (line != "S") {
    numeros.add(double.parse(line));
    line = utils.lerConsole("Digite um número ou 'S' para sair");
  }

  print(utils.somaLista(numeros));
}
