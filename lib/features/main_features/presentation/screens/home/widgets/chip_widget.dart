import 'package:flutter/material.dart';
import '../../../../../posts_opertions/presention/screens/view_post_screens/list_view_of_posts.dart';

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
            builder: (context) => const ViwerOfposts(),
          ));
        },
        child: Chip(
            padding: EdgeInsets.symmetric(
                vertical: 10, horizontal: 8 + horizontalPadding),
            label: label));
  }
}
// Chip