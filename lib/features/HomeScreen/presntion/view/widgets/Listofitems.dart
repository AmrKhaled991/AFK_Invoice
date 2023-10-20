import 'package:afktask/core/widgets/customlabel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'itemview.dart';

class Listofitems extends StatelessWidget {
  Listofitems({Key? key, required this.items}) : super(key: key);
  List<dynamic> items;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(
        height: 12.h,
      ),
    physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => itemview(
        item: items[index],
      ),
      itemCount: items.length,
    );
  }
}
