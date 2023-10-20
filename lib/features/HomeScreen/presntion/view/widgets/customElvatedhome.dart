import 'package:afktask/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomElvatedhomebuttom extends StatelessWidget {
  CustomElvatedhomebuttom({required this.function,required this.child}) : super();
  VoidCallback function;
  dynamic child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
        onPressed: function, child: child
    );
  }
}
