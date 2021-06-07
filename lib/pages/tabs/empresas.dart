import 'dart:async';

import 'package:app_spotway/utils/custom/custom_icons_svg_icons.dart';
import 'package:app_spotway/utils/widgets/texterror.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'area/area_bloc.dart';
import 'area/area_model.dart';

class Empresas extends StatefulWidget {
  @override
  _EmpresasState createState() => _EmpresasState();
}

class _EmpresasState extends State<Empresas> {
  @override
  bool get wantKeepAlive => true;
  final _bloc = AreaBloc();
  List<AreaModel> listArea;
  List cores = [
    Color(0xFFF45538),
    Color(0xFFAAAAAA),
    Color(0xFF89CBE8),
    Color(0xFF9DCB75),
    Color(0xFFCBC075),
    Color(0xFFA375CB),
    Color(0xFF75CBB4),
    Color(0xFFCB7575),
    Color(0xFFBACB75),
    Color(0xFF758FCB)
  ];
  
  final _streamController = StreamController<List<dynamic>>();

  Stream<List<dynamic>> get stream => _streamController.stream;

  List <dynamic> alfabeto = [
    {
      "alfabeto": 'Aa',
      "url": '/teste'
    },
    {
      "alfabeto": 'Bb',
      "url": '/teste'
    },
    {
      "alfabeto": 'Cc',
      "url": '/teste'      
    },
    {
      "alfabeto": 'Dd',
      "url": '/teste'
    },
    {
      "alfabeto": 'Ee',
      "url": '/teste'
    },
    {
      "alfabeto": 'Ff',
      "url": '/teste'
    },
    {
      "alfabeto": 'Gg',
      "url": '/teste'
    },
  ];


  @override
  void initState() {
    super.initState();
    _bloc.fetch();
    
    _streamController.add(alfabeto);

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: SizedBox(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Empresas',
              style: TextStyle(
                  color: Color(0xFF302543),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SourceSansPro'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5.0,0,0,0),
              child: Column(
                children: <Widget>[
                  Text(
                    'e Prestadores',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color(0xFF302543),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'SourceSansPro'
                    ),
                  ),
                  Text(
                    'de Serviços',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color(0xFF302543),
                        fontSize: 13,
                        fontWeight: FontWeight.w100),
                  ),
                ],
              ),
            )
          ],
        )),
        actions: <Widget>[
          Icon(
                CustomIconsSvg.search,
                color: Color(0xFF656565),
                size: 45.0,
          ),
          Icon(
                CustomIconsSvg.user_circle,
                color: Color(0xFF656565),
                size: 45.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Color(0xFFEFF1F2)),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(color: Colors.white),
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                height: 168,
                margin: EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Por área',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF302543),
                                fontSize: 15,
                                fontFamily: 'SourceSansPro'),
                          )
                        ],
                      ),
                    ),
                    StreamBuilder(
                        stream: _bloc.stream,
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            TextError(
                              "Não foi possível carregar as mensagens",
                              textColor: Colors.red.withOpacity(0.5),
                            );
                          }

                          if (snapshot.hasData) {
                            //print(snapshot.data.length);

                            //final List<AreaModel> area = snapshot.data;
                            return Flexible(
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: snapshot.data.length,
                                  padding:
                                      new EdgeInsets.symmetric(vertical: 8.0),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return _criandoArea(
                                        snapshot.data[index].nome,
                                        snapshot.data[index].url,
                                        snapshot.data[index].cor,
                                        snapshot.data[index].icone,
                                        index);
                                  }),
                            );
                          }

                          return Text('');
                        }),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                padding: EdgeInsets.fromLTRB(10, 10, 0, 15),
                height: 120,
                margin: EdgeInsets.symmetric(vertical: 0.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(7, 5, 0, 5),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Por segmento',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF302543),
                                fontSize: 15,
                                fontFamily: 'SourceSansPro'),
                          )
                        ],
                      ),
                    ),
                    StreamBuilder(
                        stream: _streamController.stream,
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            TextError(
                              "Não foi possível carregar as mensagens",
                              textColor: Colors.red.withOpacity(0.5),
                            );
                          }

                          print(snapshot.data[0]['alfabeto']);

                          if (snapshot.hasData) {

                            return Flexible(
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: snapshot.data.length,
                                  padding:
                                      new EdgeInsets.symmetric(vertical: 8.0),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return _criandoSegmento(
                                        snapshot.data[index]['alfabeto'],
                                        snapshot.data[index]['url'],
                                        index);
                                  }),
                            );
                          }

                          return Text('');
                        }),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                padding: EdgeInsets.fromLTRB(17, 5, 0, 5),
                height: 42,
                margin: EdgeInsets.fromLTRB(0, 8, 0, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Novas empresas e prestadores',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF302543),
                              fontSize: 15,
                              fontFamily: 'SourceSansPro'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: double.maxFinite,
                child:
                    ListView(scrollDirection: Axis.vertical, children: <Widget>[
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    padding: EdgeInsets.fromLTRB(17, 0, 0, 20),
                    //height: 200,
                    margin: EdgeInsets.symmetric(vertical: 0.5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Flexible(
                              child: Container(
                                padding: EdgeInsets.fromLTRB(5,0,0,0),
                                //height: 200,
                                width: 250,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('ABINK ESCOLA DE NÉGOCIOS',
                                        overflow: TextOverflow.fade,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Roboto',
                                            color: Color(0xFFF45538))),
                                    Text('Escola de Negócios',
                                        overflow: TextOverflow.fade,
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xFF2C2C2C))),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              //padding: EdgeInsets.all(5),
                              //height: 150,
                              //width: 12,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Image(
                                      image:
                                          AssetImage("assets/image/sabor.png"),
                                      width: 100),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xFFFCB461),
                                  ),
                                  child: Text(
                                    'Taubaté',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboto',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500
                                    ),
                                  )),
                              Container(
                                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Icon(CustomIconsSvg.calendar, size: 11, color: Color(0xFF688A97))
                                      ),
                                      Text(
                                        'Cupons (3)',
                                        style:
                                            TextStyle(color: Color(0xFF688A97),
                                            fontSize: 10,
                                            fontFamily: 'SourceSansPro',
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )),
                              Container(
                                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Icon(CustomIconsSvg.calendar, size: 11, color: Color(0xFF688A97)),
                                    ),
                                    Text(
                                      'Ofertas (3)',
                                      style:
                                          TextStyle(color: Color(0xFF688A97),
                                          fontSize: 10,
                                            fontFamily: 'SourceSansPro',
                                            fontWeight: FontWeight.w500),
                                    ),
                                  ]))
                            ])
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _criandoArea(String nome, String url, String cor, String icon,int index) {
    return InkWell(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: Color(int.parse("0xFF${cor}")),
          ),
          margin: EdgeInsets.all(5),
          width: 100.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                CustomIconsSvg.byName(icon),
                color: Colors.white,
                size: 45.0,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  '${nome}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          )),
      onTap: () {
        Navigator.pushNamed(context, url);
      },
    );
  }

  Widget _criandoSegmento(String alfabeto, String url, int index) {
    return InkWell(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color(0xFFFCB461),
          ),
          margin: EdgeInsets.fromLTRB(7, 0, 8, 0),
          width: 52,
          //height: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Text(
                  alfabeto,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SourceSansPro'),
                ),
              )
            ],
          )),
      onTap: () {
        Navigator.pushNamed(context, url);
      },
    );
  }
}
