import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vmodel/src/ui/android/user_home/widgets/stars_widget.dart';
import 'package:vmodel/src/ui/android/user_home/widgets/text_info_user_widget.dart';

class DraggableCustimWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
                  minChildSize: 0.6,
                  initialChildSize: 0.6,
                  maxChildSize: 0.8,
                  builder: (BuildContext c, s) {
                    return Container(
                      width: 350,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        color: Color(0xff1d1d1d),
                        boxShadow: [
                          new BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1.0,
                              spreadRadius: 1.0),
                        ],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
                      ),
                      child: ListView(
                        controller: s,
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Nome',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Modelo',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                              margin: EdgeInsets.only(right: 30, left: 30),
                              child: StarsWidget()),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30, left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    TextInfoCustom(text: 'Idade',color: Colors.white, size: 16,),
                                    TextInfoCustom(text: '24', size: 16,),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    TextInfoCustom(text: 'Cidade',color: Colors.white, size: 16,),
                                    TextInfoCustom(text: 'Brasília - DF', size: 16,),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Divider(
                            color: Colors.grey,
                            endIndent: 30,
                            indent: 30,
                          ),
                          SizedBox(height: 10),
                          Container(
                            margin: EdgeInsets.only(right: 30, left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    TextInfoCustom(text: 'Altura',color: Colors.white),
                                    TextInfoCustom(text: '180 cm'),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    TextInfoCustom(text: 'Peso',color: Colors.white),
                                    TextInfoCustom(text: '55 kg'),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    TextInfoCustom(text: 'Quadril',color: Colors.white),
                                    TextInfoCustom(text: '60 cm'),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    TextInfoCustom(text: 'Cor do olho', color: Colors.white),
                                    TextInfoCustom(text: 'verde'),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    TextInfoCustom(text: 'Calçado', color: Colors.white),
                                    TextInfoCustom(text: '37'),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    TextInfoCustom(text: 'Cintura', color: Colors.white),
                                    TextInfoCustom(text: '50'),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    TextInfoCustom(text: 'Cor do cabelo', color: Colors.white),
                                    TextInfoCustom(text: 'castanho'),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    TextInfoCustom(text: 'Manequim', color: Colors.white),
                                    TextInfoCustom(text: 'M'),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    TextInfoCustom(text: 'Busto', color: Colors.white),
                                    TextInfoCustom(text: '60'),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Center(
                            child: Text(
                              "Sobre Mim",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: Container(
                              margin: EdgeInsets.only(right: 35, left: 35),
                              child: Text(
                                "Meu nome é ...... tenho 23 anos ...... moro em Brásilia - DF ....................",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                          SizedBox(height: 40),
                          Container(
                            height: 80,
                            width: 200,
                            child: OutlineButton(
                              splashColor: Theme.of(context).accentColor,
                              highlightedBorderColor:
                                  Theme.of(context).accentColor,
                              borderSide: BorderSide(
                                  color: Theme.of(context).accentColor),
                              onPressed: () {
                                //portifolio
                                Get.toNamed('portifolio');
                              },
                              child: Text('Portifólio',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16)),
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    );
                  });
  }
}