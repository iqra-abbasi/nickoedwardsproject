import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nickoedwardsproject/utils/app_colors.dart';
import 'package:nickoedwardsproject/utils/app_extension.dart';
class CustomDropdown extends StatelessWidget {
  final String? selectedCategory;
  final List<String> categories;
  final ValueChanged<String?> onChanged;
  final String title;
  final double? width;
  const CustomDropdown({
    super.key,
    required this.selectedCategory,
    required this.categories,
    required this.onChanged,
    required this.title,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.h,
      width:width,
      padding: EdgeInsets.only(right: 8.w, left: 14.w),
      decoration: BoxDecoration(
        color:  AppColors.whiteFF,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
            color: AppColors.whiteEB,
            width: 1.w
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          value: selectedCategory,
          hint: Text(title,
            style: GoogleFonts.poppins(
              color:AppColors.greyD2,
              fontSize:13.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          isDense: true,
          iconStyleData: IconStyleData(
            icon: Icon(
              Icons.keyboard_arrow_down_outlined,
              color:AppColors.black00,
              size:20.r,
            ),
          ),
          items: categories.map((String category) {
            return DropdownMenuItem<String>(
              value: category,
              child: Text(
                category,
                style: TextStyle(
                  color:AppColors.black00,
                  fontSize:14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            );
          }).toList(),
          onChanged: onChanged,
          buttonStyleData: ButtonStyleData(
            height: 50.h,
            width: double.infinity,
          ),
          dropdownStyleData: DropdownStyleData(
            maxHeight: 300.h,
            width: 250.w,
            decoration: BoxDecoration(
              color: AppColors.whiteFF,
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
        ),
      ),
    );
  }
}

