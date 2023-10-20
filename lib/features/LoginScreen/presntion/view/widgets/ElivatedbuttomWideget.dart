import 'package:afktask/core/utils/App_router.dart';
import 'package:afktask/core/utils/app_styles.dart';
import 'package:afktask/features/LoginScreen/presntion/manger/logincubit/logincubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/customsnackbar.dart';
typedef Onpressd=VoidCallback?;
class Loginbuttom extends StatelessWidget {
  Onpressd onpressd;
  Loginbuttom({required this.onpressd});
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: onpressd,
        child: BlocConsumer<LogincubitCubit, LogincubitState>(
          listener:(context, state)  {
            if(state is LogincubitSucsses) context.go(AppRouter.kHome);
          },
          builder: (context, state) {
            if(state is LogincubitInitial) {
              return Text('login',
                  style: Styles.regulertext.copyWith(color: Colors.black));
            }else if(state is LogincubitIError) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                showSnackBar(context, state.error);                    // SnackBar
              });
              return Text('try to login again',
                  style: Styles.regulertext.copyWith(color: Colors.black));
            }

            return CircularProgressIndicator();
          },
        ));
  }
}


