// ignore_for_file: unnecessary_brace_in_string_interps
import 'package:flutter/material.dart';

import '../../../../../utils/app_colors.dart';

class IconCard extends StatelessWidget {
  final String? text;
  final Icon? icon;
  // ignore: use_key_in_widget_constructors
  const IconCard({
    required this.icon,
    required this.text,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        // padding: EdgeInsets.all(kDefaultPadding / 2),
        height: 55,
        width: 42,
        decoration: BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              offset: const Offset(13, 15),
              blurRadius: 22,
              color: AppColors.blue.withOpacity(0.22),
            ),
            const BoxShadow(
              offset: Offset(-15, -15),
              blurRadius: 20,
              color: Color.fromARGB(31, 0, 0, 0),
            ),
          ],
        ),
        child: Column(
          children: [Text('${text}'), icon!],
        ));
  }
}
