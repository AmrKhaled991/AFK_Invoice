import 'package:afktask/features/HomeScreen/presntion/view/widgets/customElvatedhome.dart';
import 'package:afktask/features/LoginScreen/presntion/view/widgets/ElivatedbuttomWideget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/custom_dailog.dart';
import '../../../../../core/widgets/customsnackbar.dart';
import '../../manger/addcubit/add_cubit.dart';

class Invoicebuttomadd extends StatelessWidget {
   Invoicebuttomadd({required this.onpressd}) : super();
  Onpressd onpressd;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        height: 70.h,
        child: CustomElvatedhomebuttom(

          function: onpressd! ,
          child: BlocBuilder<AddCubit, AddState>(
            builder: (context, state) {
              if(state is AddInitial) {
                return const Text('Add invoice to system',
                    style: Styles.blackregulertext);
              }else if(state is AddError) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  showSnackBar(context, state.error);                    // SnackBar
                });
                return const Text('try to login again later',
                    style: Styles.blackregulertext);
              }
              if(state is AddSucsses) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  custom_showdialog(context,state.requst.data?.qrCode??'');
                });
                return Text('sucsses', style: Styles.blackregulertext);
              }
              return SizedBox(
                  height: 25.h,
                  child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}
