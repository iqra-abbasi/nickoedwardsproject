import 'package:nickoedwardsproject/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final TextInputType keyboardType;
  final int maxLines;
  final double? width;
  final TextAlign? textAlign;

  const CustomTextFormField({
    super.key,
    this.controller,
    this.hintText,
    this.onChanged,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
this.textAlign,
    this.width, required initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:  AppColors.whiteFF,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: AppColors.whiteEB,
          width: 1.w
        ),
      ),
      height: 46.h,
      width:width,
      child: TextFormField(
        style: TextStyle(
          color:AppColors.black00,
          fontSize:14.sp,
          fontWeight: FontWeight.w400,
        ),
        controller: controller,
        onChanged: onChanged,
        keyboardType: keyboardType,
        maxLines: maxLines,
        cursorColor:AppColors.red18,
        textAlign: textAlign??TextAlign.start,
        decoration: InputDecoration(
          hintText: hintText,
          fillColor: AppColors.whiteFF,
          isDense: true,
          // filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide.none,
          ),
          hintStyle: GoogleFonts.poppins(
            color:AppColors.greyD2,
            fontSize:13.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
