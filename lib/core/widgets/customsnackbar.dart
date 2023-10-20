import 'package:flutter/material.dart';

void showSnackBar(BuildContext context,String text) {
  final snackBar = SnackBar(
    content: Text(text),
    backgroundColor: Colors.redAccent,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}