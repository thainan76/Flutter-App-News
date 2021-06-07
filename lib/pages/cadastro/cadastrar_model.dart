//import 'package:sonhodedeus/utils/prefs.dart';
import 'dart:convert' as convert;

class Cadastro {

  String nome;
  String email;
  String telefone;
  String senha;
  String confirmaSenha;

  Cadastro(
      {
      this.nome,
      this.email,
      this.telefone,
      this.senha,
      this.confirmaSenha});

  Cadastro.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    email = json['email'];
    telefone = json['telefone'];
    senha = json['senha'];
    confirmaSenha = json['confirma_senha'];
    //foto = json['foto'];
    //token = json['token'];
    //refreshToken = json['refresh_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['email'] = this.email;
    data['telefone'] = this.telefone;
    data['senha'] = this.senha;
    data['confirma_senha'] = this.confirmaSenha;
    return data;
  }

}