import 'dart:async';
import 'package:app_spotway/pages/api_response.dart';
import 'package:app_spotway/pages/esquecisenha/esqueciSenhaApi.dart';
import 'package:app_spotway/pages/esquecisenha/esqueciSenha_model.dart';


class EsqueciSenhaBloc {

  final _streamController = StreamController<bool>();

  get stream => _streamController.stream;

  Future<ApiResponse<EsqueciSenha>> esqueciSenha(String email) async {
    
    _streamController.add(true);
    
    ApiResponse response = await EsqueciSenhaApi.esqueciSenha(email);

    _streamController.add(false);

    return response;
  }

  void dispose(){
    _streamController.close();
  }
}