import 'package:flutter/material.dart';
import 'package:flutter_multi_carousel/carousel.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:app_spotway/utils/custom/custom_icons_svg_icons.dart';

class PaginaIndivual extends StatefulWidget {
  const PaginaIndivual({Key key}) : super(key: key);

  @override
  _PaginaIndivualState createState() => _PaginaIndivualState();
}

class _PaginaIndivualState extends State<PaginaIndivual> {
  List<String> assetList = [
    'https://picsum.photos/250?image=9',
    'https://picsum.photos/250?image=8',
    'https://picsum.photos/250?image=7',
    'https://picsum.photos/250?image=6',
    'https://picsum.photos/250?image=5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFF1F2),
      body: SingleChildScrollView(
        child: Container(
          height: 1800,
          child: Stack(children: <Widget>[
            Positioned(
              top: 120,
              left: 0,
              right: 0,
              height: 200,
              child: SizedBox(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: 200,
              child: SizedBox(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  child: Image.asset('assets/image/background_ind.png',
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Column(
                  children: <Widget>[
                    Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
                                    child: Image(
                                        image: AssetImage(
                                            "assets/image/img_dentista.png"),
                                        height: 75,
                                        width: 100),
                                  )
                                ],
                              ),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        //margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        child: Center(
                                          child: SmoothStarRating(
                                              allowHalfRating: true,
                                              starCount: 5,
                                              rating: 5,
                                              size: 13,
                                              filledIconData: Icons.star,
                                              halfFilledIconData: Icons.star,
                                              color: Color(0xFFE9E9E9),
                                              borderColor: Color(0xFFE9E9E9),
                                              spacing: 0.0),
                                        )),
                                  ])
                            ],
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                      //margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      padding:
                                          EdgeInsets.fromLTRB(4, 2.5, 4, 2.5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: Color(0xFFFCB461),
                                      ),
                                      child: Text(
                                        'Taubaté',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontFamily: 'Roboto',
                                          color: Colors.white,
                                        ),
                                      )),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 2, 0, 2),
                                    child: Text(
                                      'Consultório Odontológico',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 2, 0, 2),
                                    child: Text(
                                      'Dra. Beatriz Santos',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                    child: Text(
                                      '#Dentista',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w100),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 15, 0, 5),
                                    //padding: EdgeInsets.all(8),
                                    width: MediaQuery.of(context).size.width *
                                        0.70,
                                    child: Flexible(
                                      child: Text(
                                        'Aqui é o espaço para incluir o resumo que pode ser um slogam ou mesmo uma headline de marketing digital completa.',
                                        overflow: TextOverflow.fade,
                                        style: TextStyle(
                                            color: Color(0xFF707070),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.fromLTRB(2, 10, 2, 10),
                              margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                              width: MediaQuery.of(context).size.width * 0.65,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color(0xFFF75E3B),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5,0,5,0),
                                    child: Image(
                                      image: AssetImage("assets/image/tel.png"),
                                      width: 17,
                                      height: 17,
                                    ),
                                  ),
                                  Text(
                                    '(12) 99166-4... ver telefone',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Roboto',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                    //overflow: TextOverflow.clip,
                                  )
                                ],
                              )),
                          Container(
                              padding: EdgeInsets.fromLTRB(2, 10, 2, 10),
                              //margin: EdgeInsets.fromLTRB(2,0,2,0),
                              width: MediaQuery.of(context).size.width * 0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color(0xFF74D429),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5,0,5,0),
                                    child: Icon(
                                      CustomIconsSvg.whatsapp,
                                      size: 17,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                  Text(
                                    'Whatsapp',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Roboto',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                    //overflow: TextOverflow.clip,
                                  )
                                ],
                              )),
                        ])
                  ],
                ),
              ),
            ),
            Positioned(
              top: 321,
              left: 0,
              right: 0,
              child: Column(children: [
                Container(
                  height: 129,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(color: Colors.white),
                        margin: EdgeInsets.symmetric(vertical: 2.0),
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Mais informações',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Color(0xFF302543)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 70,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(color: Colors.white),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            InkWell(
                              child: Card(
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide(color: Color(0xFF604986)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                ),
                                child: Container(
                                    margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
                                    width: 60,
                                    height: 60,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(3.0),
                                                  child: Image(
                                                      image: AssetImage(
                                                          "assets/image/tag-1.png")),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  'Contato',
                                                  style: TextStyle(
                                                      color: Color(0xFF604986),
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: 'Open Sans'),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, '/segmento');
                              },
                            ),
                            InkWell(
                              child: Card(
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide(color: Color(0xFF604986)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                ),
                                child: Container(
                                    margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
                                    width: 60,
                                    height: 60,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(3.0),
                                                  child: Image(
                                                      image: AssetImage(
                                                          "assets/image/tag-1.png")),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  'Ofertas',
                                                  style: TextStyle(
                                                      color: Color(0xFF604986),
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: 'Open Sans'),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, '/segmento');
                              },
                            ),
                            InkWell(
                              child: Card(
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide(color: Color(0xFF604986)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                ),
                                child: Container(
                                    margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
                                    width: 60,
                                    height: 60,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(3.0),
                                                  child: Image(
                                                      image: AssetImage(
                                                          "assets/image/tag-1.png")),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  'Cupons',
                                                  style: TextStyle(
                                                      color: Color(0xFF604986),
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: 'Open Sans'),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, '/segmento');
                              },
                            ),
                            InkWell(
                              child: Card(
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide(color: Color(0xFF604986)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                ),
                                child: Container(
                                    margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
                                    width: 60,
                                    height: 60,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(3.0),
                                                  child: Image(
                                                      image: AssetImage(
                                                          "assets/image/tag-1.png")),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  'Mapa',
                                                  style: TextStyle(
                                                      color: Color(0xFF604986),
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: 'Open Sans'),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, '/segmento');
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  //margin: EdgeInsets.symmetric(vertical: 2.0),
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(color: Colors.white),
                        margin: EdgeInsets.symmetric(vertical: 2.0),
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Galeria de Fotos',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Color(0xFF302543)),
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.white),
                          child: Carousel(
                            height: 250.0,
                            width: 250.0,
                            initialPage: 0,
                            //allowWrap: true,
                            type: Types.slideSwiper,
                            /*onCarouselTap: (i) {
                             // print("onTap $i");
                            },*/
                            //indicatorType: IndicatorTypes.bar,
                            //arrowColor: Colors.black,
                            axis: Axis.horizontal,
                            showArrow: true,
                            showIndicator: false,
                            children: assetList.map((asset) {
                              //i++;
                              return (new Container(
                                  child: Image.network(
                                asset,
                              )));
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  //decoration: BoxDecoration(color: Colors.white),
                  //padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  //height: 200,
                  margin: EdgeInsets.symmetric(vertical: 9.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(color: Colors.white),
                        margin: EdgeInsets.symmetric(vertical: 2.0),
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Descrição',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Color(0xFF302543)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Row(children: <Widget>[
                              Flexible(
                                child: Text(
                                    'O Buffet Sabor e Arte atua na região de Taubaté há 14 anos trazendo o melhor do serviço de buffet e locação para a região. O diferencial do buffet, além da qualidade e excelência, é a prestação de serviços, ou seja, você só precisa se preocupar em comprar os produtos porque o resto é com a gente! ',
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFF707070))),
                              )
                            ]),
                            Row(children: <Widget>[
                              Flexible(
                                child: Text(
                                    'Oferecemos diversos serviços para facilitar ainda mais a sua festa como:',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFF707070))),
                              )
                            ]),
                            Row(children: <Widget>[
                              Text('Cozinheira;',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFF707070)))
                            ]),
                            Row(children: <Widget>[
                              Text('Ajudante de cozinha;',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFF707070)))
                            ]),
                            Row(children: <Widget>[
                              Text('Copeira;',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFF707070)))
                            ]),
                            Row(children: <Widget>[
                              Text('Fritadeira;',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFF707070)))
                            ]),
                            Row(children: <Widget>[
                              Text('Garçom;',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFF707070)))
                            ]),
                            Row(children: <Widget>[
                              Text('Barman;',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFF707070)))
                            ]),
                            Row(children: <Widget>[
                              Text('Churrasqueiro;',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFF707070)))
                            ])
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(color: Colors.white),
                        margin: EdgeInsets.symmetric(vertical: 2.0),
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Horário de Atendimento',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Color(0xFF302543)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Row(children: <Widget>[
                              Text('De segunda a sexta das 09h00 às 18h30',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFF302543)))
                            ]),
                            Row(children: <Widget>[
                              Text('Sábado das 09h00 às 13h00',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFF302543)))
                            ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(color: Colors.white),
                        margin: EdgeInsets.symmetric(vertical: 2.0),
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Redes Sociais',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Color(0xFF302543)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Row(children: <Widget>[
                              Image(
                                image: AssetImage("assets/image/redes.png"),
                                //width: 22,
                                height: 40,
                              )
                            ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(color: Colors.white),
                        margin: EdgeInsets.symmetric(vertical: 2.0),
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Endereços e Mapas',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Color(0xFF302543)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 2.0),
                                  child: Row(children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                              "assets/image/map-marker-alt-1.png"),
                                          //width: 22,
                                          height: 40,
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(children: [
                                          Text('Rua Chiquinha de Mattos, 35,',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 15))
                                        ]),
                                        Row(children: [
                                          Text('Centro Taubaté / SP',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 15))
                                        ])
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                            padding: EdgeInsets.fromLTRB(
                                                15, 4, 15, 4),
                                            margin: EdgeInsets.all(10),
                                            //width: 170,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              color: Color(0xFF74D429),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Image(
                                                  image: AssetImage(
                                                      "assets/image/map-marked-alt.png"),
                                                  width: 22,
                                                  height: 22,
                                                ),
                                                Text(
                                                  'Ver Mapa',
                                                  style: TextStyle(
                                                      fontSize: 11,
                                                      fontFamily: 'Roboto',
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ))
                                      ],
                                    )
                                  ]),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 2.0),
                                  child: Row(children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                              "assets/image/map-marker-alt-1.png"),
                                          //width: 22,
                                          height: 40,
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(children: [
                                          Text(
                                            'Rua Chiquinha de Mattos, 35,',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Color(0xFF302543),
                                            ),
                                            textAlign: TextAlign.left,
                                          )
                                        ]),
                                        Row(children: [
                                          Text('Centro Taubaté / SP',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xFF302543),
                                              ))
                                        ])
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                            padding: EdgeInsets.fromLTRB(
                                                15, 4, 15, 4),
                                            margin: EdgeInsets.all(10),
                                            //width: MediaQuery.of(context).size.width * 0.25,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              color: Color(0xFF74D429),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Image(
                                                  image: AssetImage(
                                                      "assets/image/map-marked-alt.png"),
                                                  width: 22,
                                                  height: 22,
                                                ),
                                                Text(
                                                  'Ver Mapa',
                                                  style: TextStyle(
                                                      fontSize: 11,
                                                      fontFamily: 'Roboto',
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ))
                                      ],
                                    )
                                  ]),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),
            Positioned(
              child: AppBar(
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0.0,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
