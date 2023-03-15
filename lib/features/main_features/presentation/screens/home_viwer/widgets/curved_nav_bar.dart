// ignore_for_file: must_be_immutable

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../../utils/app_colors.dart';
import '../../../../../caleder/presentaion/screens/caleder.dart';
import '../../../../../posts_opertions/presention/screens/add_post.dart';
import '../../profile/profileScrean.dart';
import '../home_viwer.dart';

class CurvedNavBar extends StatefulWidget {
  List<Widget> screens = const [
    HomeViwer(),
    MyCaleder(),
    ProfileScreen(),
    AddPost()
  ];
  CurvedNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CurvedNavBar> createState() => _CurvedNavBarState();
}

class _CurvedNavBarState extends State<CurvedNavBar> {
  late int index;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: index,
      buttonBackgroundColor: AppColors.blue,
      items: const <Widget>[
        Icon(Icons.home),
        Icon(Icons.add),
        Icon(Icons.calendar_month),
        Icon(Icons.person),
      ],
      onTap: (index) => setState(() => this.index = index),
      //   if (index == 1) {
      //     Navigator.of(context).pushNamed(AppRoutes.addPostScreen);
      //   } else if (index == 2) {
      //     Navigator.of(context).pushNamed(AppRoutes.calenderScreen);
      //   } else if (index == 3) {
      //     Navigator.of(context).pushNamed(AppRoutes.profileScreen);
      //   } else {
      //     Navigator.of(context).pushNamed(AppRoutes.homeScreen);
      //   }
      // },
      animationDuration: const Duration(microseconds: 580),
      backgroundColor: AppColors.white_1,
      color: AppColors.darkBlue,
    );
  }
}
