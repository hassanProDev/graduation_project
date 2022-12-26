import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:sizer/sizer.dart';

class BottomSheetStyle extends StatelessWidget {
  Widget? columnOfContent;
  Widget? mainTile;
  BottomSheetStyle({Key? key,this.columnOfContent,this.mainTile});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(13.w),
          topRight: Radius.circular(13.w),
        ),
        color: ColorManager.orangeColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 3.sp,
            width: 6.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.sp),
                color: ColorManager.whiteColor),
          ),
          mainTile??SizedBox(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13.w),
                topRight: Radius.circular(13.w),
              ),
              color: ColorManager.whiteColor,
            ),
            child: columnOfContent,
          )
        ],
      ),
    );
  }
}