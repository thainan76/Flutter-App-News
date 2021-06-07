import 'dart:async';
import 'package:app_spotway/pages/api_response.dart';
import 'package:app_spotway/pages/login/loginApi.dart';
import 'package:app_spotway/pages/login/usuario_model.dart';


class LoginBloc {

  final _streamController = StreamController<bool>();

  get stream => _streamController.stream;

  Future<ApiResponse<Usuario>> login(String email, String senha) async {
    
    _streamController.add(true);
    
    ApiResponse response = await LoginApi.login(email, senha);

    _streamController.add(false);

    return response;
  }

  void dispose(){
    _streamController.close();
  }
}