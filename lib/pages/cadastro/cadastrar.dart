import 'package:app_spotway/pages/cadastro/cadastrar_bloc.dart';
import 'package:app_spotway/pages/login/login.dart';
import 'package:app_spotway/utils/alert.dart';
import 'package:app_spotway/utils/nav.dart';
import 'package:app_spotway/utils/widgets/btn_form.dart';
import 'package:app_spotway/utils/widgets/txt_form.dart';
import 'package:flutter/material.dart';


class Cadastrar extends StatefulWidget {
  Cadastrar({Key key}) : super(key: key);

  @override
  _CadastrarState createState() => _CadastrarState();
}

class _CadastrarState extends State<Cadastrar> {

  final _bloc =  CadastrarBloc();

  final _vNome = TextEditingController();
  final _vEmail = TextEditingController();
  final _vTelefone = TextEditingController();
  final _vSenha = TextEditingController();
  final _vConfirma_senha = TextEditingController();

  final _focusEmail = FocusNode();
  final _focusTelefone = FocusNode();
  final _focusSenha = FocusNode();
  final _focusConfirma_senha = FocusNode();

  final _formKey = GlobalKey<FormState>();
  bool checkout = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF48316F),
          title: Center(
            child: Text(
              'CADASTRAR',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ), 
          actions: <Widget>[Icon(
              Icons.notifications_none,
              color: Colors.transparent,
              size: 28.0,
            ),Icon(
              Icons.notifications_none,
              color: Colors.transparent,
              size: 28.0,
            )
          ],
        ),
        body: 
    Container(
      height: double.infinity,
      padding: EdgeInsets.fromLTRB(
          40.0, 50, 40.0, 50), //distance of all the sides to the //child
      decoration: BoxDecoration(color: Color(0xFF48316F)),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image(
                    image: AssetImage("assets/image/spotway-branco-grande-1.png"),
                    width: 800,
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Criar uma conta grátis',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontFamily: 'Raleway',
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Preencha os campos e clique em cadastrar',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                          height: 40,
                          width: double.infinity,
                          child: Expanded(
                            child: Theme(
                              data: Theme.of(context)
                                  .copyWith(splashColor: Color.fromRGBO(255, 255, 255, 0.17)),
                              child: txtForm(
                                  "Nome completo",
                                  //"Digite seu e-mail",
                                  controller: _vNome,
                                  validator: _validarNome,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.next,
                                  nextFocus: _focusEmail,
                                  corFundo: Colors.white.withOpacity(0.17),
                                  corTexto: Colors.white,

                              ),
                             
                            ),
                          ),
                        ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                          height: 40,
                          width: double.infinity,
                          child: Expanded(
                            child: Theme(
                              data: Theme.of(context)
                                  .copyWith(splashColor: Color.fromRGBO(255, 255, 255, 0.17)),
                              child: txtForm(
                                  "E-mail",
                                  //"Digite seu e-mail",
                                  controller: _vEmail,
                                  validator: _validarEmail,
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                  nextFocus: _focusTelefone,
                                  corFundo: Colors.white.withOpacity(0.17),
                                  corTexto: Colors.white,

                              ),
                            ),
                          ),
                        ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                          height: 40,
                          width: double.infinity,
                          child: Expanded(
                            child: Theme(
                              data: Theme.of(context)
                                  .copyWith(splashColor: Color.fromRGBO(255, 255, 255, 0.17)),
                              child: txtForm(
                                  "Telefone",
                                  //"Digite seu e-mail",
                                  controller: _vTelefone,
                                  validator: _validarTelefone,
                                  keyboardType: TextInputType.phone,
                                  textInputAction: TextInputAction.next,
                                  nextFocus: _focusSenha,
                                  corFundo: Colors.white.withOpacity(0.17),
                                  corTexto: Colors.white,

                              ),
                            ),
                          ),
                        ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                          height: 40,
                          width: double.infinity,
                          child: Expanded(
                            child: Theme(
                              data: Theme.of(context)
                                  .copyWith(splashColor: Color.fromRGBO(255, 255, 255, 0.17)),
                              child: txtForm(
                                  "Senha",
                                  //"Digite seu e-mail",
                                  password: true,
                                  controller: _vSenha,
                                  validator: _validarSenha,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.next,
                                  nextFocus: _focusConfirma_senha,
                                  corFundo: Colors.white.withOpacity(0.17),
                                  corTexto: Colors.white,

                              ),
                            ),
                          ),
                        ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                          height: 40,
                          width: double.infinity,
                          child: Expanded(
                            child: Theme(
                              data: Theme.of(context)
                                  .copyWith(splashColor: Color.fromRGBO(255, 255, 255, 0.17)),
                              child: txtForm(
                                  "Confirma senha",
                                  //"Digite seu e-mail",
                                  password: true,
                                  controller: _vConfirma_senha,
                                  validator: _validarConfirmaSenha,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.next,
                                  //nextFocus: null,
                                  corFundo: Colors.white.withOpacity(0.17),
                                  corTexto: Colors.white,

                              ),
                            ),
                          ),
                        ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      value: checkout,
                      onChanged: (bool newValue){
                        setState(() {
                          checkout = newValue;
                        });
                      },
                      activeColor: Color(0xFFFBBF28),
                      checkColor: Colors.white,
                      //tristate: false,
                    ),
                    Text(
                      'Aceito receber ofertas de empresas',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontFamily: 'Mosk',
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
              ),
            ),
            StreamBuilder<bool>(
                stream: _bloc.stream,
                initialData: false,
                builder: (context, snapshot) {
                  return btnForm(
                    "CADASTRAR",
                    onPressed: _onClickCadastrar,
                    color: Color(0xFF289AFB),
                    showProgress: snapshot.data,
                  );
                }
              ),
           /* Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Color(0xFFFB8128),
                        width: 1.5,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/empresas');
                  },
                  color: Color(0xFFFB8128),
                  textColor: Colors.white,
                  padding: EdgeInsets.fromLTRB(100.0, 15, 100.0, 15),
                  child: Text(
                    'CADASTRAR',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),*/
          ],
        ),
      ),
    ),
    );
  }


  String _validarTelefone(String text) {
    if (text.length < 15) {
      return "Formato de telefone incorreto.";
    }
    return null;
  }

  String _validarNome(String text) {
    if (text.isEmpty) {
      return "Digite seu nome";
    }
    return null;
  }

  String _validarEmail(String text) {
    if (text.isEmpty) {
      return "Digite seu e-mail";
    }
    return null;
  }

  String _validarSenha(String text) {

    if (text.isEmpty) {
      return "Digite a senha";
    }
    if (text.length < 3) {
      return "A senha precisa ter ao menos 8 caracteres";
    }
    
    return null;
  }

  String _validarConfirmaSenha(String text) {
    if (text.isEmpty) {
      return "Digite novamente a senha";
    }
    if (_vSenha == text) {
      return "A senha está diferente";
    }
    return null;
  }

  Future<void> _onClickCadastrar() async {

    /*bool formOk = _formKey.currentState.validate();
    if (!formOk) {
      return;
    }*/
    
    String nome = _vNome.text;
    String email = _vEmail.text;
    String telefone = _vTelefone.text;
    String senha = _vSenha.text;
    String confirma_senha = _vConfirma_senha.text;

    var response =  _bloc.cadastro(nome, email, telefone, senha, confirma_senha);

    if (response != null) {      
      push(context, Login(), replace: true);
    } else {
      alerta(context, response);
    }
  }
  

}
