import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nickoedwardsproject/presentation/login/view/login_screen.dart';
import 'package:nickoedwardsproject/presentation/returnSubmitted/view/return_submitted_screen.dart';
import 'package:nickoedwardsproject/presentation/returns/provider/return_provider.dart';
import 'package:nickoedwardsproject/presentation/returns/view/return_screen.dart';
import 'package:nickoedwardsproject/utils/app_colors.dart';
import 'package:provider/provider.dart';

void main()async {
   await ScreenUtil.ensureScreenSize();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ReturnProvider(),),
      ],
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppColors.whiteFF,
          // Change the color to your desired color
        ));
    return ScreenUtilInit(

      designSize: const Size(375,812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'nickoedwards Project',
          home:LoginScreen(),
        );
      },
    );
  }
}


