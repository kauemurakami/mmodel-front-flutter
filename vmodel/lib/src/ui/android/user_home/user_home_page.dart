import 'package:flutter/material.dart';
import 'package:vmodel/src/ui/android/user_home/widgets/draggable_widget.dart';
import 'package:vmodel/src/ui/android/user_home/widgets/drawer_user_widget.dart';
import 'package:vmodel/src/ui/android/widgets/icon_edit_widget.dart';

class HomeUserPage extends StatefulWidget {
  @override
  _HomeUserPageState createState() => _HomeUserPageState();
}

class _HomeUserPageState extends State<HomeUserPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
        drawer: DrawerUserWidget(),
        body: SizedBox.expand(
            child: Stack(
          children: <Widget>[
            Image.asset("assets/images/modelo.jpeg",
                fit: BoxFit.fill, width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height,),
            SizedBox.expand(
              child: DraggableCustimWidget()
            ),
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
            EditButtonCustom()
          ],
        )));
  }
}

