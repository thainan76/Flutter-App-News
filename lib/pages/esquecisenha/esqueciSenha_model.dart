import 'package:app_spotway/utils/prefs.dart';
import 'dart:convert' as convert;

class EsqueciSenha {

  String email;

  EsqueciSenha({
      this.email
  });

  EsqueciSenha.fromJson(Map<String, dynamic> json) {
    email = json['mensagem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mensagem'] = this.email;
    return data;
  }

  
  void clear(){    
    Prefs.setString("email.prefs", "");
  }

  void save(){
    Map map = toJson();    
    String json = convert.json.encode(map);
    Prefs.setString("email.prefs", json);
  }
  
  
  static Future<EsqueciSenha> get() async{
    String json = await Prefs.getString("email.prefs");
    if (json.isEmpty){
      return null;
    }
    Map map = convert.json.decode(json);

    EsqueciSenha user = EsqueciSenha.fromJson(map);
    return user;
  }

  @override
  String toString() {
    return "EsqueciSenha{email: $email}";
  }
}