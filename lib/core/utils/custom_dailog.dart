import 'package:afktask/features/HomeScreen/presntion/manger/addcubit/add_cubit.dart';
import 'package:afktask/features/HomeScreen/presntion/view/widgets/customElvatedhome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'app_assets.dart';
import 'app_styles.dart';
void custom_showdialog(BuildContext t, String token) {
  showDialog(
    context: t,
    builder: (context) => AlertDialog(
      backgroundColor: Colors.white,
      shape: UnderlineInputBorder(borderRadius: BorderRadius.circular(10)),
      content: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(AppAssets.sucsses),
            Text('Payment completed', style: Styles.blacktextsize24),
            Text(
              " Qrcode \n $token",
              textAlign: TextAlign.center,
              style: Styles.blackregulertext,
            )
          ],
        ),
      ),
      actions: [
        CustomElvatedhomebuttom(
            function: (){
              BlocProvider.of<AddCubit>(context).readd();
              context.pop();},
            child: Text(
              'ok',
              style: Styles.blackregulertext,
            ))
      ],
    ),
  );
}
