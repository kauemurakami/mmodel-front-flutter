import 'package:flutter/material.dart';

class TextInfoCustom extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  TextInfoCustom({@required this.text, this.color = Colors.grey, this.size = 14});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
        fontSize: this.size,
        fontWeight: FontWeight.w300,
        color: this.color,
      ),
    );
  }
}
