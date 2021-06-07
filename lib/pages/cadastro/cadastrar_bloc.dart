import 'dart:async';
import 'package:app_spotway/pages/cadastro/cadastrarApi.dart';
import 'package:app_spotway/pages/login/usuario_model.dart';


class CadastrarBloc {

  final _streamController = StreamController<bool>();

  get stream => _streamController.stream;

  cadastro(String nome, String email, String telefone, String senha, String confirma_senha) async {
    
    _streamController.add(true);
    
    var response =  CadastrarApi.cadastro(nome,  email,  telefone,  senha,  confirma_senha);

    _streamController.add(false);

    return response;
  }

  void dispose(){
    _streamController.close();
  }
}