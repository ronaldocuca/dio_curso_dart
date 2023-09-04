import 'package:dio_curso_dart/enum/tipo_notificacao.dart';
import 'package:dio_curso_dart/orientacao_a_objetos/classes/pessoa_fisica.dart';
import 'package:dio_curso_dart/orientacao_a_objetos/classes/pessoa_juridica.dart';
import 'package:dio_curso_dart/service/EnviarNotificacao.dart';

void main(List<String> arguments) {
  var pf = PessoaFisica("Ronaldo", "Rua 1", "000.000.000-01", "email@", '','',
      tipoNotificao: TipoNotificao.PUSH_NOTIFICATION);
  print(pf);

  var pj = PessoaJuridica("Empresa1", "Rua da empresa", "00000000000/1000-00",'email@','','',
      tipoNotificao: TipoNotificao.SMS);
  print(pj);
  
  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(pf);
  enviarNotificacao.notificar(pj);
}