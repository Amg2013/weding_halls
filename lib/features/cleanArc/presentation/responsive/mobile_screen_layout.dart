import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../../../../utils/app_colors.dart';

import '../../../../utils.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: homeScreenItems,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(
            Icons.calendar_month,
            color: (_page == 0) ? cyan : AppColors.blue,
          ),
          Icon(
            Icons.search,
            color: (_page == 1) ? cyan : AppColors.blue,
          ),
          const Icon(Icons.people_alt_rounded),
        ],
        onTap: navigationTapped,
        index: _page,
      ),
    );
  }
}
