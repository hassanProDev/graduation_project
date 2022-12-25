import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/style/app_sizes.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:graduation_project/presentation/widgets/core/app_text/text_dark_orange.dart';
import 'package:sizer/sizer.dart';

import '../../../data/local/home/home_model.dart';

class HomeItem extends StatelessWidget {

  HomeModel homeModel;
  HomeItem({required this.homeModel});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        homeModel.onClick(context);
      },
      child: Card(
        shape: RoundedRectangleBorder( //<-- SEE HERE
          borderRadius: BorderRadius.circular(5.w) 
        ),
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(4.w),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(2.sp),
                child: Icon(
                  homeModel.iconData,
                  size: 60.sp,
                  color: ColorManager.darkOrangeColor,
                ),
                decoration: BoxDecoration(
                    color: ColorManager.lightBink,
                    borderRadius: BorderRadius.circular(35.sp)),
              ),
              Spacer(),
              TextDarkOrange(homeModel.title,fontSize: SizeManager.size16,fontWeight: FontWeight.bold,)
            ],
          ),
        ),
      ),
    );
  }
}
