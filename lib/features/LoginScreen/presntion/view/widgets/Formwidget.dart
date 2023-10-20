import 'package:afktask/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

typedef Validator = String? Function(String?);

class customformfield extends StatelessWidget {
  String hinttext;

  TextEditingController? controller;
  TextInputType? textInputType;
  Validator? validator;
  bool scure = false;
  customformfield(this.hinttext,
      {super.key, this.validator, this.textInputType, this.controller,this.scure=false});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Styles.regulertext.copyWith(color: Colors.black),
      decoration: InputDecoration(
        filled: true,
         fillColor: Colors.white,
        hintText: hinttext,
        hintStyle: const TextStyle(color: Colors.black),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
      obscureText: scure,
      controller: controller,
      validator: validator,
      keyboardType: textInputType,
    );
  }
}
