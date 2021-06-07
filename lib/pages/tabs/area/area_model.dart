
class AreaModel {
  int id;
  String nome;
  String url;
  String icone;
  String cor;

  AreaModel({
    this.id,
    this.nome,
    this.url,
    this.icone,
    this.cor,
  });

  AreaModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.nome = json['nome'];
    this.url = json['url'];
    this.icone = json['icone'];
    this.cor = json['cor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['url'] = this.url;
    data['icone'] = this.icone;
    data['cor'] = this.cor;
    return data;
  }

}
