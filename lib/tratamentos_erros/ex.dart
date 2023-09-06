import 'dart:convert';
import 'dart:io';

import 'package:dio_curso_dart/exception/nome_invalido_exception.dart';
import 'package:dio_curso_dart/models/Aluno.dart';
import 'package:dio_curso_dart/models/console_utils.dart';

void erros() {
  print("Digite um número:");
  var line = stdin.readLineSync(encoding: utf8);

  try {
    double numero = double.parse(line ?? "");
    print(numero);
  } catch (e) {
    print("Número inválido: $line");
  } finally {
    print("Executando finally");
  }
}

void execute() {
  print("Bem vindo ao sistema de notas!");
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome do aluno");
  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } catch (NomeInvalidoException) {
    nome = "Nome Padrão";
    print(NomeInvalidoException);
    exit(0);

  } catch (e) {
    print(e);
  }
  var aluno = Aluno(nome);

  double? nota;
  do {
    nota = ConsoleUtils.lerDoubleComTextoComSaida(
        "Digite a nota ou S para sair", "S");

    if (nota != null) {
      aluno.adicionarNota(nota);
    }
  } while (nota != null);

  print("As notas digitadas foram: ${aluno.getNotas()}");
  print("A média do aluno foi: ${aluno.retornaMedia()}");
  if (aluno.aprovado(7)) {
    print("O aluno ${aluno.getNome()} aprovado");
  } else {
    print("O aluno ${aluno.getNome()} reprovado");
  }
}
