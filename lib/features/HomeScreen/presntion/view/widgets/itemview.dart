import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../data/models/modelgetall/ItemsList.dart';
import '../../manger/addcubit/add_cubit.dart';
import '../../manger/itemquntity/itemquintaty_cubit.dart';

class itemview extends StatefulWidget {
  itemview({Key? key, required this.item}) : super(key: key);
  ItemsList item;

  @override
  State<itemview> createState() => _itemviewState();
}

class _itemviewState extends State<itemview> {

  @override
  Widget build(BuildContext context) {
    AddCubit addbloc=BlocProvider.of<AddCubit>(context);
    ItemquintatyCubit itemcount=BlocProvider.of<ItemquintatyCubit>(context);
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.item.itemName!,
                style: Styles.textsize18,
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
               ' ${widget.item.salesValue} EG',
                style: Styles.blackregulertext,
              ),
            ],
          ),
          Spacer(),
          IconButton(
              onPressed: () {
                setState(() {
                itemcount.remove();
              });
                addbloc.quintaty=itemcount.quitaty;
              },
              icon: Icon(
                Icons.remove,
                color: addbloc.quintaty==1?Colors.grey:Colors.black,
              )),
          Text(
            itemcount.quitaty.toString(),
            style: Styles.textsize18,
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  itemcount.incress();
                });
                addbloc.quintaty=itemcount.quitaty;
              },

              icon: Icon(
                Icons.add,
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}
