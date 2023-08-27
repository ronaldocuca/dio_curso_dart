void condicional_if() {
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
}
