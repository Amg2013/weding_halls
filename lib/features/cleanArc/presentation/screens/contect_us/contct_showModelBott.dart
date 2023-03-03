// ignore_for_file: file_names

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wedding_halls/utils/app_colors.dart';
import 'package:wedding_halls/utils/app_strings.dart';

class ConectUsWidget extends StatelessWidget {
  const ConectUsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350,
        decoration: BoxDecoration(
          color: AppColors.white_1,
          borderRadius: const BorderRadiusDirectional.only(
              topStart: Radius.circular(80), topEnd: Radius.circular(10)),
        ),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          color: AppColors.blue),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.call_outlined),
                            Text(
                              ' +20 010-9527-6311     رقم خدمة العملاء ',
                              style: TextStyle(color: AppColors.darkBlue),
                            ),
                          ])),
                  GestureDetector(
                    onTap: reachUsWhatsUp,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          color: AppColors.blue),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(Icons.whatsapp_outlined),
                            Text(AppStrings.conectWhatsUp),
                          ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: reachUsWhatsUp,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          color: AppColors.blue),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(Icons.facebook_outlined),
                            Text('ابعتلنا على رسائل الصفحة '),
                          ]),
                    ),
                  ),
                ])));
  }
}

reachUsWhatsUp() async {
  var contact = "+201276533213";

  var androidUrl = "whatsapp://send?phone=$contact&text= Hi, I need some help";

  var iOS_url =
      "https://wa.me/$contact?text=${Uri.parse("Hi, I need some help")}";

  if (Platform.isIOS) {
    if (await canLaunch(iOS_url)) {
      await launch(iOS_url, forceSafariVC: false);
    } else {
      print('Whatsapp is not installed');
    }
  } else {
    if (await canLaunch(androidUrl)) {
      await launch(androidUrl);
    } else {
      debugPrint('Whatsapp is not installed');
    }
  }
}
