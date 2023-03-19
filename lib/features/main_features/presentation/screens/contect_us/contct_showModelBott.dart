// ignore_for_file: file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:wedding_halls/features/main_features/presentation/screens/contect_us/connect_methods.dart';
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
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => Connect.connectWhatsUpAlaa(),
                    child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: AppColors.blue),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(Icons.call_outlined),
                              Text(
                                '   خدمة العملاء ',
                                style: TextStyle(color: AppColors.darkBlue),
                              ),
                            ])),
                  ),
                  GestureDetector(
                    onTap: () => Connect.connectWhatsUpAlaa(),
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
                    onTap: () => Connect.lunchCustomUrl(
                        'https://www.linkedin.com/in/amgad-nadey-2734501a5/'),
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
