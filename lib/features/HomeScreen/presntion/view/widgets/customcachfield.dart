
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/customlabel.dart';

class customcachfield extends StatelessWidget {
  customcachfield({required this.addnumber}) : super();
  Function addnumber;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

      customlabel(label: 'Inter your cash'),
      SizedBox(
        width: 150.w,
        child: TextFormField(
        
            style: Styles.textsize18,
            decoration: InputDecoration(
              filled: true,
              hintText: 'inter cash ',
              hintStyle: Styles.regulertext.copyWith(color: Colors.grey),
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              addnumber(context,value);
            }),
      )
    ]);
  }
}
