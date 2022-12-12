import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation_project/presentation/style/colors.dart';
import 'package:sizer/sizer.dart';

class GlobalText extends StatelessWidget {
  String text;
  double? size;
  Color? textColor;

  GlobalText({required this.text, this.size, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: GoogleFonts.poppins(
        fontSize: size??12.sp,
        color: textColor??blackColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
