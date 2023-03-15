import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../domain/providers/userProvider.dart';
// ignore: file_names
// ignore_for_file: prefer_const_constructors
import 'package:wedding_halls/features/posts_opertions/presention/screens/add_post.dart';
import 'package:wedding_halls/features/main_features/presentation/screens/contect_us/contct_showModelBott.dart';
import 'package:wedding_halls/utils/app_strings.dart';

import 'package:draggable_fab/draggable_fab.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../caleder/presentaion/screens/caleder.dart';
import '../home/home.dart';
import '../profile/profileScrean.dart';

class HomeViwer extends StatefulWidget {
  const HomeViwer({super.key});

  @override
  State<HomeViwer> createState() => _HomeViwerState();
}

class _HomeViwerState extends State<HomeViwer> {
  int index = 0;
  final screens = [Home(), AddPost(), MyCaleder(), ProfileScreen()];

  // get user
  @override
  void initState() {
    super.initState();
    addData();
  }

  addData() async {
    UserProvider userProvider = Provider.of(context, listen: false);
    await userProvider.refreshUser();
  }

  @override
  Widget build(BuildContext context) {
    final itmes = <Widget>[
      Icon(Icons.home),
      Icon(Icons.add),
      Icon(Icons.calendar_month),
      Icon(Icons.person),
    ];
    return Scaffold(
        floatingActionButton: DraggableFab(
            child: FloatingActionButton.extended(
          onPressed: () {
            _showModel(context);
          },
          icon: const Icon(Icons.whatsapp),
          label: Text(AppStrings.conectUsTxt),
        )),

        //
        bottomNavigationBar: CurvedNavigationBar(
          index: index,
          items: itmes,
          onTap: (index) => setState(() => this.index = index),
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(microseconds: 580),
          color: AppColors.darkBlue,
          backgroundColor: AppColors.white_1,
        ),
        extendBody: true,

        //fixed body
        body: screens[index]);
  }

  Future<dynamic> _showModel(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      enableDrag: true,
      context: context,
      builder: (context) => const ConectUsWidget(),
      clipBehavior: Clip.antiAliasWithSaveLayer,
    );
  }
}
