import 'package:dio_curso_dart/enum/tipo_notificacao.dart';
import 'package:dio_curso_dart/orientacao_a_objetos/classes/pessoa.dart';

class PessoaFisica extends Pessoa {
  String _cpf = "";

  PessoaFisica(String nome, String endereco, String cpf, String email, String celular, String token,
      {TipoNotificao tipoNotificao = TipoNotificao.NENHUM})
      : super(nome, endereco, email, celular, token, tipoNotificao: tipoNotificao) {
    _cpf = cpf;
  }

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

  @override
  String toString() {
    return {
      "Nome": getNome(),
      "Endereco": getEndereco(),
      "CPF": _cpf,
      "TipoNotificao": getTipoNotificacao()
    }.toString();
  }
}
