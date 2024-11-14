import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nickoedwardsproject/utils/app_colors.dart';


class Text17 extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;

  const Text17({
    Key? key,
    required this.title,
    this.fontWeight,
    this.color,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: 17.sp,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color??AppColors.black00,
      ),
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}

class Text13 extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;

  const Text13({
    Key? key,
    required this.title,
    this.fontWeight,
    this.color,
    this.textAlign, this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: 13.sp,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color??AppColors.black00,
      ),
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLines,
    );
  }
}

class Text15 extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;

  const Text15({
    Key? key,
    required this.title,
    this.fontWeight,
    this.color,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: 15.sp,
        fontWeight: fontWeight ?? FontWeight.w600,
        color: color??AppColors.black00,
      ),
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}
class Text16 extends StatelessWidget {
  final String title;
  final Color? color;
  final TextAlign? textAlign;

  const Text16({
    Key? key,
    required this.title,
    this.color,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: color??AppColors.whiteFF,
      ),
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}
class Text10 extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;

  const Text10({
    Key? key,
    required this.title,
    this.fontWeight,
    this.color,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: 10.sp,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color??AppColors.black00,
      ),
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}
class Text24 extends StatelessWidget {
  final String title;
  final Color? color;
  final TextAlign? textAlign;

  const Text24({
    Key? key,
    required this.title,
    this.color,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: 24.sp,
        fontWeight: FontWeight.w500,
        color: color??AppColors.black00,
      ),
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}











