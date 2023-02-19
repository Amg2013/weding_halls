import 'package:flutter/material.dart';
import '../../domain/rebrisotrey/view_posts.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({Key? key, required this.label, this.horizontalPadding = 0})
      : super(key: key);
  final Widget label;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const Model_view(),
          ));
        },
        child: Chip(
            padding: EdgeInsets.symmetric(
                vertical: 10, horizontal: 8 + horizontalPadding),
            label: label));
  }
}
// Chip