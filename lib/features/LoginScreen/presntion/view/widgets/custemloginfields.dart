import 'package:afktask/core/utils/app_styles.dart';
import 'package:afktask/core/widgets/customlabel.dart';
import 'package:afktask/features/LoginScreen/presntion/manger/logincubit/logincubit_cubit.dart';
import 'package:afktask/features/LoginScreen/presntion/view/widgets/Formwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'ElivatedbuttomWideget.dart';

class custemloginfields extends StatelessWidget {
  custemloginfields({Key? key}) : super(key: key);
  TextEditingController usernamecontroler = TextEditingController();
  TextEditingController passwordconrlar = TextEditingController();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customlabel(label: 'Usrname'),
          customformfield(
            controller: usernamecontroler,
            'UserNam',
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'inter value';
              }
              return null;
            },
          ),
          customlabel(label: 'Password'),
          customformfield(
            controller: passwordconrlar,
            'enter your Password',
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'enter value';
              }
              if (value.length < 6) {
                return 'password unvalid';
              }
              return null;
            },
          ),
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
              child: const Text(
                'forget password?',
                style: Styles.regulertext,
              ),
              onPressed: () {},
            ),
          ),
          Center(
              child: Loginbuttom(
            onpressd: () {
              if (formkey.currentState!.validate()) {
                BlocProvider.of<LogincubitCubit>(context)
                    .login(usernamecontroler.text, passwordconrlar.text);
              }
            },
          )),
        ],
      ),
    );
  }
}
