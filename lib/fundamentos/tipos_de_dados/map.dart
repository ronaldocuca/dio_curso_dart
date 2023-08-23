void tipoMap() {
  Map<String, dynamic> map1 = Map<String, dynamic>();
  var map = {'zero': 0, 'one': 1, 'two': 2};

  print(map1);
  print(map);

  print("Obtem valor pela chave");
  print(map["one"]);

  map.addAll({'ten': 10, 'eleven': 11});
  print(map);

  print("Se vazio");
  print(map.isNotEmpty);
  print(map.isEmpty);

  print("Tamanho");
  print(map.length);

  print("Contem chave");
  print(map.containsKey("eleven"));
  print(map.containsKey("teste"));

  map1.addAll({"Nome": "Ronaldo"});
  map1.addAll({"Idade": 40});
  map1.addAll({"Casado": true});
  map1.addAll({"Nascimento": DateTime(1983,1, 9)});

  print(map1);
  print(map1['Idade']);



}
