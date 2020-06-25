import 'package:flutter/material.dart';

class StarsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var notaMedia = 4;
        return Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              notaMedia >= 1
              ? Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 28,
                )
              : Icon(
                  Icons.star_border,
                  color: Colors.grey,
                  size: 28,
                ),
          /***********/
          notaMedia >= 2
              ? Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 28,
                )
              : Icon(
                  Icons.star_border,
                  color: Colors.grey,
                  size: 28,
                ),
          /***********/
          notaMedia >= 3
              ? Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 28,
                )
              : Icon(
                  Icons.star_border,
                  color: Colors.grey,
                  size: 28,
                ),
          /***********/
          notaMedia >= 4
              ? Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 28,
                )
              : Icon(
                  Icons.star_border,
                  color: Colors.grey,
                  size: 28,
                ),
          /***********/
          notaMedia >= 5
              ? Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 28,
                )
              : Icon(
                  Icons.star_border,
                  color: Colors.grey,
                  size: 28,
                )
        ],
      ),
    );
  }
}