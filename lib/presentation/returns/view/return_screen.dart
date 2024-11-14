import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nickoedwardsproject/presentation/returnSubmitted/view/return_submitted_screen.dart';
import 'package:nickoedwardsproject/presentation/returns/provider/return_provider.dart';
import 'package:nickoedwardsproject/utils/app_colors.dart';
import 'package:nickoedwardsproject/utils/app_extension.dart';
import 'package:nickoedwardsproject/utils/app_images.dart';
import 'package:nickoedwardsproject/widgets/custom_button.dart';
import 'package:nickoedwardsproject/widgets/custom_dropdown.dart';
import 'package:nickoedwardsproject/widgets/custom_text.dart';
import 'package:nickoedwardsproject/widgets/custom_textformfield.dart';
import 'package:provider/provider.dart';

class ReturnScreen extends StatelessWidget {
  final List<String> reason = [
    'Not required',
    'Faulty',
    'Surcharge',
  ];
  final String titleReason = 'Return Reasons:';

  final List<String> quantity =  List.generate(100, (index) => (index + 1).toString());
  final String titleQuantity = 'quantity';


  ReturnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteFF,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Consumer<ReturnProvider>(
          builder: (context, returnProvider, child) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  50.ht,
                  Row(
                    children: [
                      Container(
                        height: 28.h,
                        width: 28.h,
                        padding: EdgeInsets.only(left: 5.r),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.greyC7, width: 1.w),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: AppColors.greyC7,
                            size: 15.r,
                          ),
                        ),
                      ),
                      80.wd,
                      Text15(title: 'Add Return'),
                    ],
                  ),
                  20.ht,
                  Text17(title: 'Customer Details'),
                  2.ht,
                  Text13(
                    title: 'Enter the details of the returns.',
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey8F,
                  ),
                  5.ht,
                  Text10(title: 'Customer Account'),
                  5.ht,
                  CustomTextFormField(
                    width: 337.w,
                    initialValue: null,
                    hintText: 'Enter here',
                  ),
                  8.ht,
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 10.w, vertical: 10.h),
                    height: 95.h,
                    width: 337.w,
                    decoration: BoxDecoration(
                      color: AppColors.whiteF1,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: AppColors.whiteEB,
                        width: 1.w,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text24(title: 'GT Motors'),
                        Text10(
                          title: 'Gareth Thomas',
                          color: AppColors.red18,
                        ),
                        4.ht,
                        Text13(title: 'Account: 1891'),
                      ],
                    ),
                  ),
                  7.ht,
                  Text17(title: 'Parts to Return'),
                  Text13(
                    fontWeight: FontWeight.w400,
                    maxLines: 2,
                    color: AppColors.grey8F,
                    title:
                    'Enter the details of the parts to return, a maximum of 5 part numbers.',
                  ),
                  // Dynamic items list
                  ...List.generate(returnProvider.items.length, (index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        10.ht,
                        Text13(
                          title: 'Item ${index + 1}',
                          fontWeight: FontWeight.w400,
                          color: AppColors.red18,
                        ),
                        3.ht,
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text10(title: 'Part Number'),
                                CustomTextFormField(
                                  width: 225.w,
                                  hintText: 'Enter here',
                                  initialValue:
                                  returnProvider.items[index]['partNumber'],
                                  onChanged: (value) {
                                    returnProvider.setPartNumber(
                                        partNumber: value, index: index);
                                  },
                                ),
                              ],
                            ),
                            5.wd,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text10(title: 'Quantity'),
                                CustomDropdown(
                                  width: 105.w,
                                  title: titleQuantity,
                                  selectedCategory: returnProvider.items[index]['quantity'] ?? 'quantity',
                                  categories: quantity,
                                  onChanged: (String? value) {
                                    returnProvider.setQuantity(
                                      category: value!,
                                      index: index,
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        10.ht,
                        Text10(title: 'Return Reason'),
                        CustomDropdown(
                          width: 337.w,
                          title: titleReason,
                          selectedCategory: returnProvider.items[index]['reason'],
                          categories: reason,
                          onChanged: (String? value) {
                            returnProvider.setReason(category: value!, index: index);
                          },
                        ),
                      ],
                    );
                  }),
                  50.ht,
                  GestureDetector(
                    onTap: () {
                        returnProvider.addItem();

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppImages.addSvg,
                          height: 17.h,
                        ),
                        SizedBox(width: 6.w),
                        Text13(title: 'Add New Item'),
                      ],
                    ),
                  ),
                  23.ht,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: CustomButton(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ReturnSubmittedScreen(),));

                      },
                      title: 'Submit',
                    ),
                  ),
                  30.ht,
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
