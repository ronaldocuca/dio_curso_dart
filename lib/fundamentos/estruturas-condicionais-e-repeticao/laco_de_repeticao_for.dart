import 'dart:convert';
import 'dart:io';

void faco_for() {
  var resultado = 0;
  var quantidade = 0;
  print("Informe a quantidade de números:");
  var line = stdin.readLineSync(encoding: utf8);
  quantidade = int.parse(line ?? "0");

  for (var i = 1; i <= quantidade; i++) {
    print("Informe o número: ");
    line = stdin.readLineSync(encoding: utf8);
    var numero = int.parse(line ?? "0");

    resultado = resultado + numero;
    print("$i - $resultado");
  }
}
