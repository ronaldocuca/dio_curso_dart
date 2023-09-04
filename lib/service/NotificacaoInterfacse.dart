import 'package:dio_curso_dart/orientacao_a_objetos/classes/pessoa.dart';

abstract class NotificacaoInterface {
  void enviarNotificacao(Pessoa pessoa);
}