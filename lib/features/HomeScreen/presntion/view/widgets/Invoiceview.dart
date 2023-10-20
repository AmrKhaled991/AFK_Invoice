import 'package:afktask/features/HomeScreen/presntion/manger/getallcuibt/getall_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/customsnackbar.dart';
import '../../manger/addcubit/add_cubit.dart';
import 'TotalCost.dart';
import 'addbuttom.dart';
import 'customsliverdrop.dart';

class Invoiceview extends StatefulWidget {
  const Invoiceview({Key? key}) : super(key: key);
  @override
  State<Invoiceview> createState() => _InvoiceviewState();
}
class _InvoiceviewState extends State<Invoiceview> {
  var formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Wrapingitems(addnumber: addnumber,),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: TotalCost(),
        ),
        SliverToBoxAdapter(
            child: Invoicebuttomadd(
          onpressd: formadd,
        ))
      ]),
    );
  }
  void formadd() {
   AddCubit addCubit= BlocProvider.of<AddCubit>(context);
    if (formkey.currentState!.validate()) {
      addCubit.item=BlocProvider.of<GetallCubit>(context).getalldata.itemsList![11];
      if(addCubit.paymentTypeitem?.bptId!=5) {
        return showSnackBar(context, 'please select chash') ;
      } return addCubit.total > addCubit.cash ? showSnackBar(
          context, 'Cash is not enough') : addCubit.add();
      }
  }
  addnumber(BuildContext context, String value) {
    int number;
    value == '' ? (number = 0) : (number = int.parse(value));
    BlocProvider.of<AddCubit>(context).cash = number;
    setState(() {
    });
  }
}