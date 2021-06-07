import 'package:app_spotway/pages/pagina_individual.dart';
import 'package:app_spotway/pages/tabs/meusdadosApi.dart';
import 'package:app_spotway/utils/custom/custom_icons_svg_icons.dart';
import 'package:app_spotway/utils/prefs.dart';
import 'package:flutter/material.dart';
import 'package:app_spotway/pages/tabs/empresas.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  
  TabController _tabController;
  
  List<Widget> listScreens;
  @override
  void initState() {
    super.initState();

    _initTabs();

    listScreens = [
      Empresas(),
      PaginaIndivual(),
      Empresas(),
      Empresas(),
      Empresas(),
    ];
    
    MeusDadosApi.meusdados();
    
  }

  _initTabs() async {
    _tabController = TabController(length: 5, vsync: this);

    _tabController.index = await Prefs.getInt("tabIdx");

    _tabController.addListener((){
      Prefs.setInt("tabIdx", _tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color(0xFF48316F),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
              elevation: 0, // This removes the shadow from all App Bars.
        )
      ),
      home: Scaffold(
        body: TabBarView(
          controller: _tabController,
          physics: NeverScrollableScrollPhysics(),
          children: listScreens,
        ),
        bottomNavigationBar: TabBar(
          controller: _tabController,
          labelColor: Color(0xFF48316F),
          unselectedLabelColor: Color(0xFF48316F).withOpacity(0.5),
          unselectedLabelStyle: TextStyle(
            color: Color(0xFF48316F).withOpacity(0.5),
          ),
          indicator: UnderlineTabIndicator(
            insets: EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 72.0),
            borderSide: BorderSide(color: Color(0xFF48316F), width: 2.0),
          ),
          labelStyle: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
            letterSpacing:  -0.5,
          ),
          tabs: [
            Tab(  
              icon: Icon(CustomIconsSvg.map_marker_alt, size: 17, color: Color(0xFF48316F)),
              child: Container(
                height: 24,
                //width: 80,
                child: Text(
                  "Empresas e prestadores",
                  textAlign: TextAlign.center,
                ),
              ),
              iconMargin: EdgeInsets.only(bottom:4),
            ),
            Tab(
              icon:  Icon(CustomIconsSvg.tag, size: 17, color: Color(0xFF48316F)),
              child: Container(
                height: 24,
                child: Text(
                  "Ofertas",
                  textAlign: TextAlign.center,
                ),
              ),
              iconMargin: EdgeInsets.only(bottom: 4)
            ),
            Tab(
              icon:  Icon(CustomIconsSvg.calendar, size: 17, color: Color(0xFF48316F)),
              child: Container(
                height: 24,
                child: Text(
                  "Notícias",
                  textAlign: TextAlign.center,
                ),
              ),
              iconMargin: EdgeInsets.only(bottom: 4)
            ),           
            Tab(
              icon:  Icon(CustomIconsSvg.newspaper, size: 17, color: Color(0xFF48316F)),
              child: Container(
                height: 24,
                child: Text(
                  "Cinema",
                  textAlign: TextAlign.center,
                ),
              ),
              iconMargin: EdgeInsets.only(bottom: 4)
            ),
            Tab(
              icon:  Icon(CustomIconsSvg.ellipsis_h, size: 17, color: Color(0xFF48316F)),
              child: Container(
                height: 24,
                child: Text(
                  "Mais",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xffffffff),
      ),
    );
  }
}
