import 'package:flutter/material.dart';
import 'package:vmodel/src/ui/android/contratante_home/widgets/drawer_contratante.dart';
import 'package:vmodel/src/ui/android/contratante_home/widgets/telas/chat_contratante_home.dart';
import 'package:vmodel/src/ui/android/contratante_home/widgets/telas/modelos_contratante_home.dart';
import 'package:vmodel/src/ui/android/contratante_home/widgets/telas/recentes_cadastrante_home.dart';
import 'package:vmodel/src/ui/android/contratante_home/widgets/telas/servicos_contratante_home.dart';

class HomeContratantePage extends StatefulWidget {
  @override
  _HomeContratantePageState createState() => _HomeContratantePageState();
}

class _HomeContratantePageState extends State<HomeContratantePage> {
  var _indiceAtual = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
      RecentesPage(),
      ServicosPage(),
      ChatPage(),
      ModelosPage()
    ];

    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerContratanteWidget(),
      body: Stack(
        children: <Widget>[
          Container(
              color: Colors.red,
              padding: EdgeInsets.all(0),
              child: telas[_indiceAtual]),
          Positioned(
            left: 5,
            child: SafeArea(
              child: IconButton(
                icon: Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  //drawer menu
                  _scaffoldKey.currentState.openDrawer();
                },
                splashColor: Theme.of(context).accentColor,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.shifting,
          currentIndex: _indiceAtual,
          onTap: (index) {
            setState(() {
              _indiceAtual = index;
            });
          },
          fixedColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              //backgroundColor: Colors.greenAccent,
              title: Text("Início"),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
                //backgroundColor: Colors.amber[400],
                title: Text("Serviços"),
                icon: Icon(Icons.add)),
            BottomNavigationBarItem(
              //backgroundColor: Colors.lightGreenAccent,
              title: Text("Chat"),
              icon: Icon(Icons.chat_bubble_outline),
            ),
            BottomNavigationBarItem(
              //backgroundColor: Colors.cyanAccent,
              title: Text("Modelos"),
              icon: Icon(Icons.people_outline),
            ),
          ]),
    );
  }
}
