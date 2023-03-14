import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wedding_halls/utils/app_colors.dart';

import '../posts_opertions/presention/screens/add_post.dart';
import '../caleder/presentaion/screens/caleder.dart';
import '../main_features/presentation/screens/home/home.dart';
import '../main_features/presentation/screens/profile/profileScrean.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  int _page = 0;
  late PageController pageController; // for tabs animation

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    //Animating Page
    pageController.jumpToPage(page);
  }

  final screens = const [Home(), AddPost(), MyCaleder(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        // physics: ,
        children: screens,
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: CurvedNavigationBar(
          animationDuration: const Duration(microseconds: 580),
          backgroundColor: AppColors.darkBlue,
          items: const [
            Icon(Icons.home),
            Icon(Icons.add),
            Icon(Icons.calendar_month),
            Icon(Icons.person),
          ],
          onTap: navigationTapped,
          index: _page),
    );
  }
}
