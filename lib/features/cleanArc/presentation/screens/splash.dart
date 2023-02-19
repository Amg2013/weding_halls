// ignore_for_file: prefer_const_constructorst';
import 'package:wedding_halls/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:wedding_halls/features/cleanArc/presentation/screens/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            Image.asset("assets/images/logo.png"),
            Text(
              'اختاري قاعتك من غير مجهود\n احجز فرحك من مكانك',
              style: TextStyle(fontSize: 30, color: AppColors.white_1),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  color: AppColors.white_1,
                  border: Border.all(),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              // child: SizedBox(
              //   height: 300,
              //   width: double.infinity,
              //   child: Lottie.network(
              //       'https://assets8.lottiefiles.com/packages/lf20_CfhVnO.json'),
              // ),

              child: SizedBox(
                width: 380,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AouthScrean()));
                  },
                  child: Text(
                    // textDirectionToAxisDirection(TextDirection.),
                    'ابدا ',
                    style: TextStyle(
                      fontSize: 30,
                      color: AppColors.darkBlue,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
