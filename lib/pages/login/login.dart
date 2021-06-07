import 'package:app_spotway/pages/api_response.dart';
import 'package:app_spotway/pages/esquecisenha/esqueciSenha_bloc.dart';
import 'package:app_spotway/pages/home.dart';
import 'package:app_spotway/pages/login/usuario_model.dart';
import 'package:app_spotway/pages/login/login_bloc.dart';
import 'package:app_spotway/utils/alert.dart';
import 'package:app_spotway/utils/nav.dart';
import 'package:app_spotway/utils/widgets/btn_form.dart';
import 'package:app_spotway/utils/widgets/txt_form.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  @override
  void initState() {

    super.initState();
    
    /*Usuario usuario = Usuario();
    usuario.clear();*/

    Future<Usuario> future = Usuario.get();
    future.then((Usuario user) {
      if (user != null) {
        setState(() {
          push(context, Home(), replace: true);
        });
      }
    });

  }

  final _bloc =  LoginBloc();
  final _esqueciSenhabloc =  EsqueciSenhaBloc();
  final _vEmail = TextEditingController();
  final _vSenha = TextEditingController();
  final _focusSenha = FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF48316F),
          title: Center(
            child: Text(
              'LOGIN',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.bold),
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
            )],
        ),
        body: Container(
          height: double.infinity,
          padding: EdgeInsets.fromLTRB(
              20.0, 25, 20.0, 25), //distance of all the sides to the //child
          decoration: BoxDecoration(color: Color(0xFF48316F)),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Image(
                      image: AssetImage(
                          "assets/image/spotway-branco-grande-1.png"),
                      width: 800,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Entrar com e-mail',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontFamily: 'Raleway',
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w100),
                      ),
                      Text(
                        'Preencha os campos e clique em entrar',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Raleway',
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold),
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
                        data: Theme.of(context).copyWith(
                            splashColor: Color.fromRGBO(255, 255, 255, 0.17)),
                        child: txtForm(
                              "E-mail",
                              //"Digite seu e-mail",
                              controller: _vEmail,
                              validator: _validarEmail,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              nextFocus: _focusSenha,
                              corFundo: Colors.white.withOpacity(0.17),
                              corTexto: Colors.white,
                            )
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
                        data: Theme.of(context).copyWith(
                            splashColor: Color.fromRGBO(255, 255, 255, 0.17)),
                        child: txtForm(
                            "Senha",
                            //"Digite sua senha",
                            password: true,
                            controller: _vSenha,
                            validator: _validarSenha,
                            keyboardType: TextInputType.text,
                            nextFocus: _focusSenha,
                            corFundo: Color.fromRGBO(255, 255, 255, 0.17),
                            corTexto: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                StreamBuilder<bool>(
                stream: _bloc.stream,
                initialData: false,
                builder: (context, snapshot) {
                  return btnForm(
                    "Entrar com o e-mail",
                    onPressed: _onClickLogin,
                    color: Color(0xFFFB8128),
                    showProgress: snapshot.data,
                  );
                }
              ),
              
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    child: GestureDetector(
                      child: Text(
                        'Esqueci a senha',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFBBF28),
                            fontFamily: 'SourceSansPro',
                            decoration: TextDecoration.none),
                      ),
                      onTap: _onEsqueciSenha
                      /*onTap: () {
                        //Navigator.pushNamed(context, '/cadastrar');
                      },*/
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  String _validarEmail(String text) {
    if (text.isEmpty) {
      alerta(context, "Digite seu e-mail");
      return "Digite seu e-mail";
    }
    return null;
  }

  String _validarSenha(String text) {
    if (text.isEmpty) {
      alerta(context, "Digite a senha");
      return "Digite a senha";
    }
    if (text.length < 8) {
      alerta(context, "A senha precisa ter ao menos 8 caracteres");
      return "A senha precisa ter ao menos 8 caracteres";
    }
    return null;
  }

  Future<void> _onClickLogin() async {

    /*bool formOk = _formKey.currentState.validate();
    if (!formOk) {
      return;
    }*/

    String email = _vEmail.text;
    String senha = _vSenha.text;

    if(email.isEmpty){
      alerta(context, "Digite seu e-mail");
      return;
    }

    if(senha.isEmpty){
      alerta(context, "Digite a senha");
      return;
    }

    print('Email/senha');
    print(email);
    print(senha);
    print('----');
    ApiResponse response = await _bloc.login(email, senha);
    print('--response--');
    print(response);
    
    if (response.ok) {      
      push(context, Home(), replace: true);
    } else {
      alerta(context, response.msg);
    }
  }

  Future<void> _onEsqueciSenha() async {

    /*bool formOk = _formKey.currentState.validate();
    if (!formOk) {
      return;
    }*/

    String email = _vEmail.text;

    if(email.isEmpty){
      alerta(context, "Digite seu e-mail");
      return;
    }


    print('Email');
    print(email);
    print('----');
    ApiResponse response = await _esqueciSenhabloc.esqueciSenha(email);
    print('--response--');
    print(response.msg);
    
    if (response.ok) {      
      //push(context, Home(), replace: true);
      alerta(context, response.msg);
    } else {
      alerta(context, response.msg);
    }
  }
}
