
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/modelgetall/Data.dart';
import '../../manger/addcubit/add_cubit.dart';
import '../../manger/getallcuibt/getall_cubit.dart';
import 'CustomDropdown.dart';
import 'customcachfield.dart';

class Wrapingitems extends StatefulWidget {
  Wrapingitems({required this.addnumber}) : super();
  Function addnumber;
  @override
  State<Wrapingitems> createState() => _WrapingitemsState();
}
class _WrapingitemsState extends State<Wrapingitems> {
  @override
  Widget build(BuildContext context) {
    Getalldataresponse getallCubit = BlocProvider.of<GetallCubit>(context).getalldata;
    AddCubit addCubit= BlocProvider.of<AddCubit>(context);
    return Column(
      children: [
        Row(
          children: [
            CustomDropdown(setstt: (){setState(() {});},dropdawemitems: getallCubit.paymentTypeList!.map((e) => e.paymentTypeName!).toList(),
                labal: 'Select Payment Type',
                dropdawnid: 1),
            SizedBox(width: 32.w,),
            CustomDropdown(dropdawemitems: getallCubit.customerList!.map((e) => e.customerName!).toList(),
                labal: 'Select Customer Type',
                dropdawnid: 2),
          ],
        ),
        Row( crossAxisAlignment: CrossAxisAlignment.center ,
          children: [
            CustomDropdown(dropdawemitems: getallCubit.storesList!.map((e) => e.storeName!).toList(),
              labal: 'Select Store Type',
              dropdawnid: 3,
            ),
            SizedBox(
              width: 32.w,
            ),
            Visibility(
                visible:addCubit.paymentTypeitem?.bptId==5 ,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true, //NEW
                child: customcachfield(addnumber: widget.addnumber,)),
          ],
        )
      ],
    );
  }
}
