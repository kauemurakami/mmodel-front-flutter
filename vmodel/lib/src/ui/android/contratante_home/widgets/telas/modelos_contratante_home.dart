import 'package:flutter/material.dart';
import 'package:vmodel/src/ui/android/contratante_home/widgets/card_image_modelo.dart';
import 'package:vmodel/src/ui/android/contratante_home/widgets/card_modelos_widget.dart';

class ModelosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            SafeArea(
              child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CardCustomModelo(),
                      CardCustomModelo(),
                      CardCustomModelo(),
                      CardCustomModelo(),
                      CardCustomModelo(),
                      CardCustomModelo(),
                      CardCustomModelo(),

                    ],
                  )),
            ),
            SizedBox(height: 5),
            Icon(
              Icons.whatshot,
              color: Colors.red,
              size: 40,
            ),
            SizedBox(height: 5),
            Divider(
              color: Colors.grey,
              endIndent: 30,
              indent: 30,
            ),
            SizedBox(height: 10),
            Text(
              'Perfis',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 0),
              child: Container(
                height: MediaQuery.of(context).size.height / 2.3,
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    CardCustomWidget(),
                    CardCustomWidget(),
                    CardCustomWidget(),
                    CardCustomWidget(),
                    CardCustomWidget(),
                    CardCustomWidget(),
                    CardCustomWidget(),
                    CardCustomWidget(),
                    CardCustomWidget(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
