// ignore_for_file: prefer_const_constructorst';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:wedding_halls/features/authantcaion/presentaion/loging/login.dart';
import 'package:wedding_halls/utils/app_colors.dart';
import 'package:wedding_halls/utils/assets_valeus.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isfinshed = false;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetsValues.imgSpalsh), fit: BoxFit.cover)),
        height: double.infinity,
        padding: EdgeInsets.only(top: 700.h, left: 30.w, right: 30.w),
        child: SwipeableButtonView(
          onFinish: onFinish,
          isFinished: isfinshed,
          onWaitingProcess: onWaitingProcess,
          activeColor: AppColors.blue,
          buttonWidget:
              Icon(Icons.double_arrow_outlined, color: AppColors.cyan),
          buttonText: 'text deflut',

          // style: TextStyle(fontSize: 10.sp),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .84,
            left: MediaQuery.of(context).size.width * 05,
            right: MediaQuery.of(context).size.width * .05),
        child: SizedBox(
          height: 60.h,
          child: SwipeableButtonView(
            onFinish: onFinish,
            isFinished: isfinshed,
            onWaitingProcess: onWaitingProcess,
            activeColor: AppColors.blue,
            buttonWidget:
                Icon(Icons.double_arrow_outlined, color: AppColors.cyan),
            buttonText: 'text deflut',

            // style: TextStyle(fontSize: 10.sp),
          ),
        ),
      ),
    ]);
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
