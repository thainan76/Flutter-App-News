
import 'package:app_spotway/pages/area.dart';
import 'package:app_spotway/pages/cadastro/cadastrar.dart';
import 'package:app_spotway/pages/home.dart';
import 'package:app_spotway/pages/tabs/empresas.dart';
import 'package:app_spotway/pages/inicio.dart';
import 'package:app_spotway/pages/login/login.dart';
import 'package:app_spotway/pages/pagina_individual.dart';
import 'package:app_spotway/pages/restaurantes.dart';
import 'package:app_spotway/pages/restaurantes_internos.dart';
import 'package:app_spotway/pages/segmento.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(SpotwayApp());

class SpotwayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            elevation: 0, // This removes the shadow from all App Bars.
          )),
      home: MyHomePage(title: 'Splash Screen Flutter'),
      //home: Home(),
      initialRoute: '/',
      routes: {
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/empresas': (context) => Empresas(),
        '/area': (context) => Area(),
        '/restaurantes': (context) => Restaurantes(),
        '/paginaIndividual': (context) => PaginaIndivual(),
        '/cadastrar': (context) => Cadastrar(),
        '/login': (context) => Login(),
        '/segmento': (context) => Segmento(),
        '/restaurantesInternos': (context) => RestaurantesInternos(),
        '/home': (context) => Home()
        //'/': (context) => Inicio(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Inicio();
  }
}
