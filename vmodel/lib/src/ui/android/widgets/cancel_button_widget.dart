import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CancelButtonCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      splashColor: Colors.red,
      highlightedBorderColor: Colors.red,
      borderSide: BorderSide(color: Colors.red),
      onPressed: () {
        Get.back();
      },
      child:
          Text('Cancelar', style: TextStyle(color: Colors.white, fontSize: 16)),
    );
  }
}
