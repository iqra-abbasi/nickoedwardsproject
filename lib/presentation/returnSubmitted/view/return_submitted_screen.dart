import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nickoedwardsproject/presentation/returnSubmitted/component/returnSub_component.dart';
import 'package:nickoedwardsproject/utils/app_colors.dart';
import 'package:nickoedwardsproject/utils/app_extension.dart';
import 'package:nickoedwardsproject/utils/app_images.dart';
import 'package:nickoedwardsproject/widgets/custom_button.dart';
import 'package:nickoedwardsproject/widgets/custom_text.dart';
import 'package:nickoedwardsproject/widgets/custom_textformfield.dart';
class ReturnSubmittedScreen extends StatefulWidget {
  const ReturnSubmittedScreen({super.key});

  @override
  State<ReturnSubmittedScreen> createState() => _ReturnSubmittedScreenState();
}

class _ReturnSubmittedScreenState extends State<ReturnSubmittedScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteFF,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
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
                border: Border.all(color: AppColors.greyC7,
                width: 1.w),
              shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(Icons.arrow_back_ios,
          color: AppColors.greyC7,
                size: 15.r,),
              ),),
          80.wd,
                  Text15(title: 'Return Submitted'),
                ],
              ),
          
          30.ht,
              Center(
                child: Image.asset(AppImages.verificationImg,
                height: 62.h,
                  width: 62.h,
                  fit: BoxFit.cover,
                ),
              ),
               11.ht,
              Center(child: Text17(title: 'Done')),
              2.ht,
              Center(
                child: Text13(title: 'Returns note complete, customer notified. ',
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.center,
                  color: AppColors.grey8F,),
              ),
          
              5.ht,
              Center(
                child: Text24(title: '1891-1211-1401',
                textAlign: TextAlign.center,),
              ),
             20.ht,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                height: 90.h,
                width: 337.w,
                decoration: BoxDecoration(
                  color:  AppColors.whiteF1,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                      color: AppColors.whiteEB,
                      width: 1.w
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text13(title: '1891 - GT Motors',
                    ),
                    Text10(title: 'Gareth Thomas',
                      color: AppColors.red18,),
                     14.ht,
                    Text13(title: '<Date Time Stamp>'),
                  ],
                ),
              ),
          
               7.ht,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                decoration: BoxDecoration(
                  color:  AppColors.whiteF1,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                      color: AppColors.whiteEB,
                      width: 1.w
                  ),
                ),
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ReturnSubComponent(
                      title: "1 x EOF265",
                      subtitle: "Not Required",
                    );
          
                  },),
              ),
          
          10.ht,           Center(
               child: Image.asset(AppImages.carImg,
                 height: 90.h,
                 width: 90.w,
                 fit: BoxFit.cover,
               ),
             ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:20.w),
                child: CustomButton(onTap: (){},
                    title: 'Done'),
              ),
             30.ht,
            ],
          ),
        ),
      ),
    );
  }
}


