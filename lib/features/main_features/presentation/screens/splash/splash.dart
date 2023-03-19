// ignore_for_file: prefer_const_constructorst';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:wedding_halls/features/authantcaion/presentaion/loging/login.dart';
import 'package:wedding_halls/utils/app_colors.dart';
import 'package:wedding_halls/utils/assets_valeus.dart';

import '../../../../../utils/app_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isfinshed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(AssetsValues.imgSpalsh),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .84,
              left: MediaQuery.of(context).size.width * .05,
              right: MediaQuery.of(context).size.width * .05),
          child: SwipeableButtonView(
              onFinish: onFinish,
              // indicatorColor:
              //     const AlwaysStoppedAnimation<Color>(Colors.white),
              isFinished: isfinshed,
              buttontextstyle: TextStyle(fontSize: 20.sp),
              onWaitingProcess: onWaitingProcess,
              activeColor: AppColors.yellwo,
              buttonWidget: Icon(Icons.double_arrow_outlined,
                  size: 25.r, color: AppColors.cyan),
              buttonText: AppStrings.splashTxt),
        ),
      ]),
    );
  }

  void onFinish() async {
    await Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ));
  }

  void onWaitingProcess() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        isfinshed = true;
      });
    });
  }
}
