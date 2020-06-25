import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vmodel/src/ui/android/widgets/cancel_button_widget.dart';

class PortifolioPage extends StatelessWidget {
//repository injection
//final MyRepository repository = MyRepository(apiClient: MyApiClient(httpClient: http.Client()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  'https://source.unsplash.com/random/900x600'), //model image
            )),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    "Seção de Jobs",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 100,
                        width: 150,
                        child: Image.network(
                          'https://source.unsplash.com/random/900x610',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.network(
                          'https://source.unsplash.com/random/910x600',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey,
                        child: Center(
                          child: Icon(Icons.add_a_photo),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    "Seção de Polaroids",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 100,
                        width: 150,
                        child: Image.network(
                          'https://source.unsplash.com/random/700x550',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.network(
                          'https://source.unsplash.com/random/700x600',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey,
                        child: Center(
                          child: Icon(Icons.add_a_photo),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    "Seção de Books",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 100,
                        width: 150,
                        child: Image.network(
                          'https://source.unsplash.com/random/800x500',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.network(
                          'https://source.unsplash.com/random/850x550',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey,
                        child: Center(
                          child: Icon(Icons.add_a_photo),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      Positioned(
          left: MediaQuery.of(context).size.width / 2.6,
          child: SafeArea(
            child: Container(
              child: Text('Portifólio',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
          )),
      Positioned(
          child: SafeArea(
        child: IconButton(
            icon: Icon(Icons.arrow_back_ios), onPressed: () => Get.back()),
      ))
    ]));
  }
}
