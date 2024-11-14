import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nickoedwardsproject/presentation/returns/view/return_screen.dart';
import 'package:nickoedwardsproject/utils/app_colors.dart';
import 'package:nickoedwardsproject/utils/app_extension.dart';
import 'package:nickoedwardsproject/utils/app_images.dart';
import 'package:nickoedwardsproject/widgets/custom_button.dart';
import 'package:nickoedwardsproject/widgets/custom_text.dart';
import 'package:nickoedwardsproject/widgets/custom_textformfield.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteFF,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               50.ht,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    AppImages.autopartsImg,
                    height: 114.h,
                    width: 114.w,
                    fit: BoxFit.cover,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 300.h,
                        width: 260.w,
                        child: Image.asset(
                          AppImages.frontCornerPng,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 10.h,
                        left: -80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text17(
                              title: 'Login',
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: 5.h), // Adds space between title and subtitle
                            Text13(
                              title: 'Enter your login details.',
                              fontWeight: FontWeight.w400,
                              color: AppColors.grey8F,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
          ,


              30.ht,
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:40.w),
            child: Row(
              children: [
                SvgPicture.asset(
                  AppImages.codeSvg,
                  height: 22.h,
                ),
                SizedBox(width: 9.w,),
                Text13(title: 'Operator Code',),
              ],
            ),
          ),
              12.ht,
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:40.w),
                child: CustomTextFormField(initialValue: null,
                  hintText: 'Enter here',
                  keyboardType: TextInputType.number,
                ),
              ),

              30.ht,
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:40.w),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      AppImages.pinSvg,
                      height: 22.h,
                    ),
                     9.wd,
                    Text13(title: 'PIN',),
                  ],
                ),
              ),
               12.ht,
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:40.w),
                child: CustomTextFormField(initialValue: null,
                  hintText: 'Enter here',
                  keyboardType: TextInputType.number,
                ),
              ),

150.ht,
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:40.w),
                child: CustomButton(onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ReturnScreen(),));
                },
                    title: 'Login'),
              ),
              30.ht,

            ],
          ),
        )
    );
  }
}

