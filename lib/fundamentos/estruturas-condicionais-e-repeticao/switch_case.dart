import 'dart:convert';
import 'dart:io';

void switch_case() {
  print("Bem vindos a nossa calculadora!");
  print("Informa o primeiro número:");
  var line = stdin.readLineSync(encoding: utf8);
  var numero1 = double.parse(line ?? "0");

  print("Informe o segundo número: ");
  line = stdin.readLineSync(encoding: utf8);
  var numero2 = int.parse(line ?? "0");

  print("Informe a operação matemática (+, -, *, /):");
  line = stdin.readLineSync(encoding: utf8);
  var operacao = line ?? "";

  double resultado = 0;

  switch (operacao) {
    case "+":
      resultado = numero1 + numero2;
      break;
    case "-":
      resultado = numero1 - numero2;
      break;
    case "*":
      resultado = numero1 * numero2;
      break;
    case "/":
      resultado = numero1 / numero2;
      break;
    default:
      print("Operação inválida!");
      exit(0);
  }

  print("Operação solicitada: $operacao");
  print("O resultado da operação é: $resultado");
}
