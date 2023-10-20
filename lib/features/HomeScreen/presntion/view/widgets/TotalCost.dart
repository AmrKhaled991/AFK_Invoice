import 'package:afktask/features/HomeScreen/data/models/modelgetall/ItemsList.dart';
import 'package:afktask/features/HomeScreen/presntion/manger/getallcuibt/getall_cubit.dart';
import 'package:afktask/features/HomeScreen/presntion/manger/itemquntity/itemquintaty_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/customlabel.dart';
import '../../manger/addcubit/add_cubit.dart';
import 'itemview.dart';

class TotalCost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AddCubit addbloc = BlocProvider.of<AddCubit>(context);
    ItemsList item = BlocProvider.of<GetallCubit>(context).getalldata.itemsList![11];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: customlabel(label: 'items')),
          itemview(
            item: item,
          ),
          BlocConsumer<ItemquintatyCubit, ItemquintatyState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              if(state is ItemquintatyINcress||state is ItemquintatyRemove||state is ItemquintatyInitial) {
                addbloc.total=(item.salesValue! * addbloc.quintaty);
                addbloc.remannig=addbloc.cash - (item.salesValue! * addbloc.quintaty);
                return Column( crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Visibility(
                    visible: addbloc.paymentTypeitem?.bptId==5,
                    child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Chasd : ${addbloc.cash.toString()} EG',
                          style: Styles.textsize17,
                        ),
                        Text(
                          'remaing : ${addbloc.remannig} EG',
                          style: Styles.textsize17,
                        ),
                      ],
                    ),
                  ),
                  RichText(
                      text: TextSpan(
                          text: 'total : ',
                          style: Styles.textsize24,
                          children: [
                        TextSpan(
                            text: '${addbloc.total} EG',
                            style: Styles.textsize24
                                .copyWith(fontWeight: FontWeight.w400))
                      ])),
                ],
              );
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
