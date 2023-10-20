import 'package:afktask/core/utils/app_styles.dart';
import 'package:afktask/features/LoginScreen/presntion/view/widgets/Customloginbar.dart';
import 'package:afktask/features/LoginScreen/presntion/view/widgets/custemloginfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  TextEditingController passwordconrlar = TextEditingController();
  TextEditingController usernamecontroler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomLoginbar(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back To AFK',
                      style: Styles.textsize24,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    custemloginfields(),
                    SizedBox(height: 24.h),
                    Center(
                        child: TextButton(
                      child: Text('Create new acount',
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {},
                    )),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }


}
