import 'package:dio_curso_dart/enum/tipo_notificacao.dart';

abstract class Pessoa {
  String _nome = "";
  String _endereco = "";
  String _email = "";
  String _celular = "";
  String _token = "";
  TipoNotificao _tipoNotificao = TipoNotificao.NENHUM;

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  String getEndereco() {
    return _endereco;
  }

  void setEmail(String email) {
    _email = email;
  }

  String getEmail() {
    return _email;
  }

    void setCelular(String celular) {
    _celular = celular;
  }

  String getCelular() {
    return _celular;
  }

  void setToken(String token) {
    _token = token;
  }

  String getToken() {
    return _token;
  }


  void setTipoNotificacao(TipoNotificao tipoNotificao) {
    _tipoNotificao = tipoNotificao;
  }

  TipoNotificao getTipoNotificacao() {
    return _tipoNotificao;
  }

  Pessoa(
      String nome, String endereco, String email, String celular, String token,
      {TipoNotificao tipoNotificao = TipoNotificao.NENHUM}) {
    _nome = nome;
    _endereco = endereco;
    _email = email;
    _token = token;

    _tipoNotificao = tipoNotificao;
  }

  @override
  String toString() {
    return {
      "Nome": _nome,
      "Endereco": _endereco,
      "TipoNotificao": _tipoNotificao
    }.toString();
  }
}
