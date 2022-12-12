import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/style/colors.dart';
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
                  color: primaryColor,
                ),
                decoration: BoxDecoration(
                    color: lightBink,
                    borderRadius: BorderRadius.circular(35.sp)),
              ),
              Spacer(),
              Text(homeModel.title.toUpperCase(),style: Theme.of(context).textTheme.headline3,)
            ],
          ),
        ),
      ),
    );
  }
}
