// ignore_for_file: prefer_const_constructorst';

import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:flutter/material.dart';
import 'package:wedding_halls/features/cleanArc/presentation/screens/loging/login.dart';
import 'package:wedding_halls/utils/app_colors.dart';
import 'package:wedding_halls/utils/app_strings.dart';
import 'package:wedding_halls/utils/assets_valeus.dart';

import '../../../../utils/media_query_values.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isfinshed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Builder(builder: (context) {
          // this to init Mediaqourery sizes
          // i uesd builder to give me context to but my init fun
          // under materialApp becouse it's the provoder of ,Medaiqourey
          AppSizes().init(context);
          return Stack(children: [
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
              child: Container(
                height: 75,
                child: SwipeableButtonView(
                    onFinish: onFinish,
                    isFinished: isfinshed,
                    onWaitingProcess: onWaitingProcess,
                    activeColor: AppColors.darkBlue,
                    buttonWidget: Icon(Icons.double_arrow_outlined,
                        color: AppColors.cyan),
                    buttonText: AppStrings.splashTxt),
              ),
            ),
          ]);
        }));
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
