void tipoList() {
  List<String> lstString = [];
  var lstInt = [1, 10, 50];
  List lstDynamic = [];

  print("Tamanho da Lista");
  print(lstString.length);
  print(lstInt.length);

  print(lstString);
  print(lstInt);
  print(lstDynamic);

  print("Adicionar item");
  lstString.add("M");
  lstString.add("B");
  lstInt.add(90);
  lstDynamic.add("A");
  lstDynamic.add(10);
  lstDynamic.add(9.5);
  lstDynamic.add(true);

  print(lstString);
  print(lstInt);
  print(lstDynamic);

  print("Remover item");
  lstString.remove("M");
  lstInt.remove(90);
  lstDynamic.remove(9.50);

  print(lstString);
  print(lstInt);
  print(lstDynamic);

  print("Verifica se uma lista está ou não vazia");
  print(lstString.isEmpty);
  print(lstInt.isNotEmpty);

  print("Ve valor contem na lista");
  print(lstString.contains("C"));
  print(lstDynamic.contains(false));

  print("Função where");
  print(lstInt);
  print(lstInt.where((x) => x > 9 && x < 99));

  // Outras funções
  print(lstInt.reversed);
  print(lstInt.first);
}
