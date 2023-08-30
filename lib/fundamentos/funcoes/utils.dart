import 'dart:convert';
import 'dart:io';

String lerConsole(String texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double lerConsoleDouble(String texto) {
  var numero = double.tryParse(lerConsole(texto));

  if (numero == null) {
    return 0.0;
  }

  return numero;
}

double somaLista(List<double> numeros) {
  double acumulador = 0;
  for (var numero in numeros) {
    acumulador = soma(acumulador, numero);
  }

  return acumulador;
}

double soma(double numero1, double numero2) {
  return numero1 + numero2;
}

double subtracao(double numero1, double numero2) {
  return numero1 - numero2;
}

double divisao(double numero1, double numero2) {
  return numero1 / numero2;
}

double multiplicacao(double numero1, double numero2) {
  if (numero2 == 0) {
    print("Não é possível dividir por 0");
    exit(0);
  } else {
    return numero1 * numero2;
  }
}
