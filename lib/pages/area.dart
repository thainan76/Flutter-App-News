import 'package:flutter/material.dart';

class Area extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFFFFFFF),
          title: Text(
            'Área Alimentação',
            style: TextStyle(
              color: Color(0xFF302543),
              fontSize: 20,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.bold
            ),
          ),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ), 
          actions: <Widget>[

          ],
      ),
      body:Container(
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.fromLTRB(20,0,20,0),
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Card(
                    child: SizedBox(
                      height: 40,
                      width: 300,
                      child: Expanded(
                        child: Theme(
                          data: Theme.of(context)
                              .copyWith(splashColor: Color.fromRGBO(243, 243, 243, 1)),
                          child: TextField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),   
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 15),
                              filled: true,
                              prefixIcon: Icon(Icons.search),
                              fillColor: Color.fromRGBO(243, 243, 243, 1),
                              hintText: 'Buscando ...',
                              hintStyle: TextStyle(
                                  color: Color(0xFF707070),
                                  fontSize: 14,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w100),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(243, 243, 243, 1),
                                    width: 0,
                                    style: BorderStyle.solid),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(children: <Widget>[
                    Divider(
                      color: Color(0XFFEFF1F2),
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5),
                          width: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Restaurantes',
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF48316F),
                                      decoration: TextDecoration.none)),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Image(image: AssetImage("assets/image/angle-right.png")),
                            ],
                          ),
                        ),
                      ],
                    )
                  ]),
                  Column(children: <Widget>[
                    Divider(
                      color: Color(0XFFEFF1F2),
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5),
                          width: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Restaurantes',
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF48316F),
                                      decoration: TextDecoration.none)),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Image(image: AssetImage("assets/image/angle-right.png")),
                            ],
                          ),
                        ),
                      ],
                    )
                  ]),
                  Column(children: <Widget>[
                    Divider(
                      color: Color(0XFFEFF1F2),
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5),
                          width: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Restaurantes',
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF48316F),
                                      decoration: TextDecoration.none)),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Image(image: AssetImage("assets/image/angle-right.png")),
                            ],
                          ),
                        ),
                      ],
                    )
                  ])
                ],
              ))
        ],
      ),
    )
    );
  }
}
