import 'package:dio_curso_dart/enum/tipo_notificacao.dart';
import 'package:dio_curso_dart/orientacao_a_objetos/classes/pessoa.dart';
import 'package:dio_curso_dart/service/NotificacaoInterfacse.dart';
import 'package:dio_curso_dart/service/impl/NotificacaoEmail.dart';
import 'package:dio_curso_dart/service/impl/NotificacaoPushNotification.dart';
import 'package:dio_curso_dart/service/impl/NotificacaoSMS.dart';

class EnviarNotificacao {
  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificao.EMAIL:
        notificacao = NotificacaoEmail();
        break;
      case TipoNotificao.PUSH_NOTIFICATION:
        notificacao = NotificacaoPushNotificao();
        break;
      case TipoNotificao.SMS:
        notificacao = NotificacaoSMS();
        break;
      default:
        return;
    }

    if (notificacao != null) {
      notificacao!.enviarNotificacao(pessoa);
    } else {
      print("Pessoa sem tipo de notificação");
    }
  }
}
