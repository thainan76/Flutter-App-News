import 'package:app_spotway/utils/prefs.dart';
import 'dart:convert' as convert;

class Usuario {
  int id;
  String nome;
  String email;
  String origem;

  Usuario(
      {this.id,
      this.nome,
      this.email,
      this.origem
    });

  Usuario.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    email = json['email'];
    origem = json['origem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['email'] = this.email;
    data['origem'] = this.origem;
    return data;
  }

  
  void clear(){    
    Prefs.setString("user.prefs", "");
  }

  void save(){
    Map map = toJson();    
    String json = convert.json.encode(map);
    Prefs.setString("user.prefs", json);
  }

  static Future<Usuario> get() async{
    String json = await Prefs.getString("user.prefs");
    if (json.isEmpty){
      return null;
    }
    Map map = convert.json.decode(json);

    Usuario user = Usuario.fromJson(map);
    return user;
  }

    @override
  String toString() {
    return "Usuario{id: $id, nome: $nome, email: $email, origem: $origem}";
  }
}