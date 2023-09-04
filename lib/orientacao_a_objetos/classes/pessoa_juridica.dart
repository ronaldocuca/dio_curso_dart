import 'package:dio_curso_dart/enum/tipo_notificacao.dart';
import 'package:dio_curso_dart/orientacao_a_objetos/classes/pessoa.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj = "";

  PessoaJuridica(String nome, String endereco, String cnpj,  String email, String celular, String token,
      {TipoNotificao tipoNotificao = TipoNotificao.NENHUM})
      : super(nome, endereco,  email, celular, token, tipoNotificao: tipoNotificao) {
    _cnpj = cnpj;
  }

  void setCpnj(String cnpj) {
    _cnpj = cnpj;
  }

  String getCnpj() {
    return _cnpj;
  }

  @override
  String toString() {
    return {
      "Nome": getNome(),
      "Endereco": getEndereco(),
      "CNPJ": _cnpj,
      "TipoNotificao": getTipoNotificacao()
    }.toString();
  }
}
