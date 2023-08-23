void tipoDouble() {
  double numero1 = 10.9;
  var numero2 = 11.1;

  print("Remove ponto flutuante");
  print(numero1.truncate());
  print(numero2.truncate());

  print("Converte para inteiro");
  print(numero1.toInt());

  print("Arredonda para cima");
  print(numero1.ceil());
  print(numero2.ceil());

  print("Arredonda para baixo");
  print(numero1.floor());
  print(numero2.floor());

  print("Retorna se o número é finito");
  print(numero1.isFinite);

  print("Retorna se o número é infinito");
  print(numero2.isInfinite);

  print("Retorna se o número não é um número válido");
  print(numero1.isNegative);
  print((numero2 * -1).isNegative);

  print("Converte String para double");
  print(double.parse("10"));
  // print(double.parse("teste"));
  print(double.tryParse("teste"));
}
