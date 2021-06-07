import 'dart:convert';
import 'package:app_spotway/pages/api_response.dart';
import 'package:app_spotway/pages/login/usuario_model.dart';
import 'package:http/http.dart' as http;

class LoginApi {

  static Future<ApiResponse<Usuario>> login(String email, String senha) async {
    try {
      var url = 'https://api.spotway.com.br/login';
      //var url = 'http://api.spotway.com.br/login';

      Map<String, String> headers = {"Content-type": "application/json", "Access-Control-Allow-Origin": "* "};

      Map params = {
        "headers" : {
            "usuario": "spotway",
            "token": "763a32e2-75a6-11ea-87d8-42010a9e0003",
        },
        "dados":{
          "email": email,
          "senha": senha,
        }
      };

      String jsonLogin = json.encode(params);

      var response = await http.post(url, body: jsonLogin, headers: headers);

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      Map mapResponse = json.decode(response.body);
      print(mapResponse['sucesso']);

      if (mapResponse['sucesso']) {
        final user = Usuario.fromJson(mapResponse['dados']);

        user.save();

        return ApiResponse.ok(user, '');
      }

      return ApiResponse.error(mapResponse["mensagem"]);
    } catch (error, exception) {
      print("Erro no login $error > $exception");

      return ApiResponse.error("Não foi possível fazer o login");
    }
  }


}