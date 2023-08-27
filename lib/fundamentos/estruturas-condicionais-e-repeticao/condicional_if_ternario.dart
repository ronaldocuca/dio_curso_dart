void condicional_if_ternario() {
  var prova1 = 8;
  var prova2 = 5;
  var media = (prova1 + prova2) / 2;
  if (media >= 7) {
    print("O aluno passou, com a nota: $media");
  } else if (media >= 5) {
    print("O aluno está de recuperação com a nota: $media");
  } else {
    print("O aluno reprovou com a nota: $media");
  }

  var resultado = (prova1 >= 7) ? "O aluno passou" : "O aluno reprovou";

  // if (prova1 >= 7) {
  //   resultado = "O aluno passou";
  // } else {
  //   resultado = "O aluno reprovou";
  // }

  print(resultado);
}
