import 'package:afktask/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLoginbar extends StatelessWidget {
  const CustomLoginbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 200.h,
      child: Column(
        children: [
          SizedBox(height:15.h),
          Image.asset(AppAssets.logo,height: 150.h,)
        ],
      ),
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
            bottom:  Radius.elliptical(
                MediaQuery.of(context).size.width, 100.h)),
      ),
    );
  }
}
