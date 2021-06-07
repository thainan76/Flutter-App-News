import 'package:flutter/material.dart';

class Restaurantes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: SizedBox(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Restaurantes',
              style: TextStyle(
                  color: Color(0xFF302543),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ],
        )),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
//        padding: EdgeInsets.all(20),
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                left: BorderSide(
                  //                   <--- left side
                  color: Color(0xFFFFC400),
                  width: 3.0,
                ),
              ),
            ),
            padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
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
                        padding: EdgeInsets.all(5),
                        //height: 200,
                        width: 250,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Abink Escola de Negócios',
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF45538))),
                            Text('Escola de Negócios',
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w100)),
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
                              image: AssetImage("assets/image/sabor.png"),
                              width: 100),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
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
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image(
                                image:
                                    AssetImage("assets/image/calendar-1.png")),
                          ),
                          Text(
                            'Cupons (3)',
                            style: TextStyle(color: Color(0xFF688A97)),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image(
                              image: AssetImage("assets/image/calendar-1.png")),
                        ),
                        Text(
                          'Cupons (3)',
                          style: TextStyle(color: Color(0xFF688A97)),
                        ),
                      ]))
                ])
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                left: BorderSide(
                  //                   <--- left side
                  color: Color(0xFFFFC400),
                  width: 3.0,
                ),
              ),
            ),
            padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
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
                        padding: EdgeInsets.all(5),
                        //height: 200,
                        width: 250,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Abink Escola de Negócios',
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF45538))),
                            Text('Escola de Negócios',
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w100)),
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
                              image: AssetImage("assets/image/sabor.png"),
                              width: 100),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
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
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image(
                                image:
                                    AssetImage("assets/image/calendar-1.png")),
                          ),
                          Text(
                            'Cupons (3)',
                            style: TextStyle(color: Color(0xFF688A97)),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image(
                              image: AssetImage("assets/image/calendar-1.png")),
                        ),
                        Text(
                          'Cupons (3)',
                          style: TextStyle(color: Color(0xFF688A97)),
                        ),
                      ]))
                ])
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
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
                        padding: EdgeInsets.all(5),
                        //height: 200,
                        width: 250,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Abink Escola de Negócios',
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF45538))),
                            Text('Escola de Negócios',
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w100)),
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
                              image: AssetImage("assets/image/sabor.png"),
                              width: 100),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
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
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image(
                                image:
                                    AssetImage("assets/image/calendar-1.png")),
                          ),
                          Text(
                            'Cupons (3)',
                            style: TextStyle(color: Color(0xFF688A97)),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image(
                              image: AssetImage("assets/image/calendar-1.png")),
                        ),
                        Text(
                          'Cupons (3)',
                          style: TextStyle(color: Color(0xFF688A97)),
                        ),
                      ]))
                ])
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
