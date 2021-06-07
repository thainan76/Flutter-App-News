import 'dart:convert';
import 'package:http/http.dart' as http;

class CadastrarApi {

  static cadastro(String nome, String email, String telefone, String senha, String confirma_senha) async {
    
      var url = 'https://api.spotway.com.br/cadastro';

      Map<String, String> headers = {"Content-type": "application/json"};

      Map params = {
        "headers" : {
            "usuario": "spotway",
            "token": "763a32e2-75a6-11ea-87d8-42010a9e0003"
        },
        "dados":{
          "nome": nome,
          "email": email,
          "telefone": telefone,
          "senha": senha,
          "confirma_senha": confirma_senha,
        }
        //"expire_date": "2020-12-31 23:59:59"
      };

      String jsonLogin = json.encode(params);

      var response = await http.post(url, body: jsonLogin, headers: headers);

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      Map mapResponse = json.decode(response.body);
      //print(mapResponse);
      
      
      if (mapResponse['sucesso']) {
        //final user = Cadastro.fromJson(mapResponse);

        //user.save();

        return true;
        //print('SALVOU!!');
      }
      
      return mapResponse['mensagem'];
     //return ApiResponse.error(mapResponse["mensagem"]);
    
  }


}