import 'package:app_spotway/utils/prefs.dart';
import 'dart:convert' as convert;

class MeusDados {
  
  int id;
  String nome;
  String endereco;
  String enderecoNumero;
  String enderecoComplemento;
  String enderecoBairro;
  String enderecoCidade;
  String enderecoEstado;
  String enderecoCep;
  int ddd1;
  String telefone1;
  int ddd2;
  String telefone2;
  String cpf;
  String email;
  String datanasc;
  String sexo;
  String datacadastro;
  String avatar;
  String intRg;
  String intOrigem;

  MeusDados(
      {this.id,
      this.nome,
      this.endereco,
      this.enderecoNumero,
      this.enderecoComplemento,
      this.enderecoBairro,
      this.enderecoCidade,
      this.enderecoEstado,
      this.enderecoCep,
      this.ddd1,
      this.telefone1,
      this.ddd2,
      this.telefone2,
      this.cpf,
      this.email,
      this.datanasc,
      this.sexo,
      this.datacadastro,
      this.avatar,
      this.intRg,
      this.intOrigem});

  MeusDados.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    endereco = json['endereco'];
    enderecoNumero = json['endereco_numero'];
    enderecoComplemento = json['endereco_complemento'];
    enderecoBairro = json['endereco_bairro'];
    enderecoCidade = json['endereco_cidade'];
    enderecoEstado = json['endereco_estado'];
    enderecoCep = json['endereco_cep'];
    ddd1 = json['ddd1'];
    telefone1 = json['telefone1'];
    ddd2 = json['ddd2'];
    telefone2 = json['telefone2'];
    cpf = json['cpf'];
    email = json['email'];
    datanasc = json['datanasc'];
    sexo = json['sexo'];
    datacadastro = json['datacadastro'];
    avatar = json['avatar'];
    intRg = json['int_rg'];
    intOrigem = json['int_origem'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
     data['id'] = this.id;
     data['nome'] = this.nome;
     data['endereco'] = this.endereco;
     data['endereco_numero'] = this.enderecoNumero;
     data['endereco_complemento'] = this.enderecoComplemento;
     data['endereco_bairro'] = this.enderecoBairro;
     data['endereco_cidade'] = this.enderecoCidade;
     data['endereco_estado'] = this.enderecoEstado;
     data['endereco_cep'] = this.enderecoCep;
     data['ddd1'] = this.ddd1;
     data['telefone1'] = this.telefone1;
     data['ddd2'] = this.ddd2;
     data['telefone2'] = this.telefone2;
     data['cpf'] = this.cpf;
     data['email'] = this.email;
     data['datanasc'] = this.datanasc;
     data['sexo'] = this.sexo;
     data['datacadastro'] = this.datacadastro;
     data['avatar'] = this.avatar;
     data['int_rg'] = this.intRg;
     data['int_origem'] = this.intOrigem;
    return data;
  }

  
  void clear(){    
    Prefs.setString("meusdados.prefs", "");
  }

  void save(){
    Map map = toJson();    
    String json = convert.json.encode(map);
    Prefs.setString("meusdados.prefs", json);
  }
  

  static Future<MeusDados> get() async{
    String json = await Prefs.getString("meusdados.prefs");
    if (json.isEmpty){
      return null;
    }
    Map map = convert.json.decode(json);

    MeusDados user = MeusDados.fromJson(map);
    return user;
  }

    @override
  String toString() {
    //return "MeusDados{id: $id, nome: $nome, email: $email, foto: $foto, token: $token, refresh_token: $refreshToken}";
  }
}