import 'package:flutter/material.dart';

class CardSolicitacaoCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.4, color: Theme.of(context).accentColor)),
      child: Row(
        children: <Widget>[
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width / 3,
            child: Image.network(
              'https://source.unsplash.com/random/800x500',
              fit: BoxFit.fill,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text('Nome Completo Modelo',
                    style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 8),
                child: Text('Empresa', style: TextStyle(color: Colors.grey)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 8),
                child: Text('Goiania - Go',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
