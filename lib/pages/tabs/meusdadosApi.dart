import 'dart:convert';
import 'package:app_spotway/pages/api_response.dart';
import 'package:app_spotway/pages/login/usuario_model.dart';
import 'package:app_spotway/pages/tabs/meusdados.dart';
import 'package:app_spotway/utils/prefs.dart';
import 'package:http/http.dart' as http;

class MeusDadosApi {

  static Future<ApiResponse<MeusDados>> meusdados() async {
    try {
      Usuario user = await Usuario.get();

      var url = 'https://api.spotway.com.br/meus-dados/${user.id}';

      Map<String, String> headers = {"Content-type": "application/json"};

      var response = await http.get(url, headers: headers);

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      Map mapResponse = json.decode(response.body);
      print(mapResponse);

      /*if (mapResponse['sucesso']) {
        final user = MeusDados.fromJson(mapResponse);

        user.save();

        return ApiResponse.ok(user);
      }*/

      return ApiResponse.error(mapResponse["mensagem"]);
    } catch (error, exception) {
      print("Erro no meusDados $error > $exception");

      return ApiResponse.error("Não foi possível obter seus dados.");
    }
  }


}