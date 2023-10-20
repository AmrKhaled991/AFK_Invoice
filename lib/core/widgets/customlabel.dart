import 'package:afktask/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class customlabel extends StatelessWidget {
  String label;
  customlabel({required this.label});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(label,style: Styles.regulertext,),
    );
  }
}
