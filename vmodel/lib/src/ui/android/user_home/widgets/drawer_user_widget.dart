import 'package:flutter/material.dart';

class DrawerUserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.5,
      child: Drawer(
        child: Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 15),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 24.0),
                  child: InkWell(
                    splashColor: Theme.of(context).accentColor,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.content_paste,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Jobs Candidatados",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 24.0),
                  child: InkWell(
                    splashColor: Theme.of(context).accentColor,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.featured_play_list,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Jobs",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 24.0),
                  child: InkWell(
                    splashColor: Theme.of(context).accentColor,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.message,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Chat",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 24.0),
                  child: InkWell(
                    splashColor: Theme.of(context).accentColor,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.receipt,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Solicitações",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 24.0),
                  child: InkWell(
                    splashColor: Theme.of(context).accentColor,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.exit_to_app,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Sair",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
