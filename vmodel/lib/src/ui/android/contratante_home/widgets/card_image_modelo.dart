import 'package:flutter/material.dart';

class CardCustomModelo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 200,
      width: 200,
      child: Image.network(
        'https://source.unsplash.com/random/200x200',
        fit: BoxFit.cover,
      ),
    );
  }
}
