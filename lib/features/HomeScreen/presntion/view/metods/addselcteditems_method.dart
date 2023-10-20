import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/modelgetall/Data.dart';
import '../../manger/addcubit/add_cubit.dart';
import '../../manger/getallcuibt/getall_cubit.dart';

addvalue(String value,BuildContext context,int dropdawnid){
  Getalldataresponse getallCubit= BlocProvider.of<GetallCubit>(context).getalldata;
  AddCubit addCubit= BlocProvider.of<AddCubit>(context);
  switch(dropdawnid){
    case 1:
      {
        int index = getallCubit.paymentTypeList!
            .indexWhere((element) => element.paymentTypeName == value);
        addCubit.paymentTypeitem = getallCubit.paymentTypeList![index];
        print(addCubit.paymentTypeitem?.paymentTypeName);
      }
      break;
    case 2:
      {
        int index = getallCubit.customerList!
            .indexWhere((element) => element.customerName == value);
        addCubit.customeritem = getallCubit.customerList![index];
        print(addCubit.customeritem.customerName);
      }
      break;
    case 3:
      {
        int index = getallCubit.storesList!
            .indexWhere((element) => element.storeName == value);
        addCubit.Storeitem = getallCubit.storesList![index];
        print(addCubit.Storeitem.storeName);
      }
      break;
  }

}
