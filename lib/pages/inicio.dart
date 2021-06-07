import 'dart:convert' show json;
import 'dart:async';
import 'package:app_spotway/utils/alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import "package:http/http.dart" as http;

class Inicio extends StatefulWidget {
  Inicio({Key key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  String _contactText;
  GoogleSignInAccount _currentUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          20.0, 40, 20.0, 40), //distance of all the sides to the //child
      decoration: BoxDecoration(color: Color(0xFF48316F)),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              //margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image(
                    image: AssetImage("assets/image/spotway-branco-grande-1.png"),
                    width: 800,
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Seja bem-vindo!',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontFamily: 'Raleway',
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w100),
                  ),
                  Text(
                    'O melhor guia de Negócios Locais',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w100),
                  ),
                ],
              ),
            ),
            /*Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                height: 45,
                child: FacebookSignInButton(
                    borderRadius: 5,
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                        fontSize: 16),
                    text: 'Facebook',
                    onPressed: _login),
              ),
            ),*/
            /*Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                height: 45,
                child: GoogleSignInButton(
                    borderRadius: 5, text: 'Google', onPressed: _handleSignIn),
              ),
            ),*/
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:  _btnIconFormFacebook()
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:  _btnIconFormGoogle()
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.white,
                        width: 1.5,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  color: Colors.transparent,
                  textColor: Colors.white,
                  padding: EdgeInsets.fromLTRB(50.0, 15, 50.0, 15),
                  child: Text(
                    'Entrar com E-mail',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Raleway',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Text(
                  'Ainda não tem cadastro?',
                  style: TextStyle(
                      fontSize: 14,
                      color:  Color(0xFFFFFFFF),
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                child: GestureDetector(
                  child: Text(
                    'Crie sua conta, é grátis!',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFBBF28),
                        fontFamily: 'SourceSansPro',
                        decoration: TextDecoration.none),
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, '/cadastrar');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _btnIconFormGoogle() {
    return Container(
      height: 50,
      width: double.infinity,
      child: RaisedButton.icon(
        onPressed: _handleSignIn,
        elevation: 2.0,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(8.0),
        ),
        color: const Color(0xFFFFFFFF),
        icon: Image.asset(
          "assets/image/logo_google.png",
          height: 20,
        ),
        label: Text(
          "Google",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xFF1A1A1A),
            fontSize: 17,
            fontFamily: 'Mosk'
          ),
        ),
      ),
    );
  }

   _btnIconFormFacebook() {
    return Container(
      height: 50,
      width: double.infinity,
      child: RaisedButton.icon(
        onPressed: _login,
        elevation: 2.0,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(8.0),
        ),
        color: const Color(0xFF3B5998),
        icon: Image.asset(
          "assets/image/logo_facebook.png",
          height: 20,
        ),
        label: Text(
          "Facebook",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xFFFFFFFF),
            fontSize: 17,
            fontFamily: 'Mosk'
          ),
        ),
      ),
    );
  }

  void _showMessage(String message) {
      alerta(context, message);
      print(message);
  }

  String _message = 'Log in/out by pressing the buttons below.';

  static final FacebookLogin facebookSignIn = new FacebookLogin();

  Future<Null> _login() async {
    final FacebookLoginResult result =
        await facebookSignIn.logInWithReadPermissions(['email']);
    final token = result.accessToken.token;
    final graphResponse = await http.get(
                'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=${token}');
    final profile = json.decode(graphResponse.body);
    print(profile);
    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final FacebookAccessToken accessToken = result.accessToken;
        print('passou');
        _showMessage('''
         Logged in!
         
         Token: ${accessToken.token}
         User id: ${accessToken.userId}
         Expires: ${accessToken.expires}
         Permissions: ${accessToken.permissions}
         Declined permissions: ${accessToken.declinedPermissions}
         ''');
        break;
      case FacebookLoginStatus.cancelledByUser:
        _showMessage('Login cancelled by the user.');
        break;
      case FacebookLoginStatus.error:
        _showMessage('Something went wrong with the login process.\n'
            'Here\'s the error Facebook gave us: ${result.errorMessage}');
        break;
    }
    
  }

  Future<void> _handleSignIn() async {
    try {
      print('passou');
      await _googleSignIn.signIn();
      _handleGetContact();
    } catch (error) {
      print(error);
    }
  }

  Future<void> _handleGetContact() async {
    setState(() {
      _contactText = "Loading contact info...";
    });
    final response = await http.get(
      'https://people.googleapis.com/v1/people/me/connections'
      '?requestMask.includeField=person.names',
      headers: await _currentUser.authHeaders,
    );
    if (response.statusCode != 200) {
      setState(() {
        _contactText = "People API gave a ${response.statusCode} "
            "response. Check logs for details.";
      });
      print('People API ${response.statusCode} response: ${response.body}');
      return;
    }
    final Map<String, dynamic> data = json.decode(response.body);
    final String namedContact = _pickFirstNamedContact(data);
    setState(() {
      if (namedContact != null) {
        _contactText = "I see you know $namedContact!";
      } else {
        _contactText = "No contacts to display.";
      }
    });
  }

  String _pickFirstNamedContact(Map<String, dynamic> data) {
    final List<dynamic> connections = data['connections'];
    final Map<String, dynamic> contact = connections?.firstWhere(
      (dynamic contact) => contact['names'] != null,
      orElse: () => null,
    );
    if (contact != null) {
      final Map<String, dynamic> name = contact['names'].firstWhere(
        (dynamic name) => name['displayName'] != null,
        orElse: () => null,
      );
      if (name != null) {
        return name['displayName'];
      }
    }
    return null;
  }


}