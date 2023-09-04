import 'package:dio_curso_dart/orientacao_a_objetos/classes/pessoa.dart';
import 'package:dio_curso_dart/service/NotificacaoInterfacse.dart';

class NotificacaoEmail implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("enviando Push Notificação para: ${pessoa.getNome()}");
  }
}
