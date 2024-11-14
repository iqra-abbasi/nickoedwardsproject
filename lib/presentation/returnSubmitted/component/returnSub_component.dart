import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nickoedwardsproject/utils/app_colors.dart';
import 'package:nickoedwardsproject/utils/app_extension.dart';
import 'package:nickoedwardsproject/widgets/custom_text.dart';

class ReturnSubComponent extends StatelessWidget {
  final String title;
  final String subtitle;
  const ReturnSubComponent({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text13(title: title,
        ),
        Text10(title:subtitle,
          color: AppColors.red18,),
         8.ht,
      ],
    );
  }
}
