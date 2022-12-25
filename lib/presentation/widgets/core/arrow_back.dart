
import 'package:flutter/material.dart';

import '../../style/colors.dart';


class ArrowBack extends StatelessWidget {
  const ArrowBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back_ios,
        color: ColorManager.darkOrangeColor,
      ),
    );
  }
}
