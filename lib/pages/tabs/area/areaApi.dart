import 'dart:convert';
import 'package:app_spotway/pages/tabs/area/area_model.dart';
import 'package:http/http.dart' as http;

class AreaApi {

  static Future<List<AreaModel>> areas() async {

      var url = 'https://api.spotway.com.br/areas';

      Map<String, String> headers = {"Content-type": "application/json"};

      Map params = {
        "headers" : {
            "usuario": "spotway",
            "token": "763a32e2-75a6-11ea-87d8-42010a9e0003"
        },
      };

      String jsonLogin = json.encode(params);

      var response = await http.post(url, body: jsonLogin, headers: headers);

      //print('Response status: ${response.statusCode}');
      //print('Response body: ${response.body}');

      Map mapResponse = json.decode(response.body);
      
      //if (!mapResponse['dados'].isEmpty) {
        
        List<AreaModel> area = mapResponse['dados']
          .map<AreaModel>((map) => AreaModel.fromJson(map))
          .toList();

        //print(area);

        return area;
      //}

      //return [];
  
  }


}