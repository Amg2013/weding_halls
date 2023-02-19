import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/app_colors.dart';

class ViwerOfposts extends StatefulWidget {
  const ViwerOfposts({super.key});

  @override
  State<ViwerOfposts> createState() => _ViwerOfpostsState();
}

class _ViwerOfpostsState extends State<ViwerOfposts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: sershandGretting(),
    );
  }

  Column sershandGretting() {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        /// blue decor
        SizedBox(
          height: size.height * 0.2,
          child: Stack(children: <Widget>[
            Container(
              height: size.height * 0.2 - 27,
              decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
            ),
            // for serceh
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  margin:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 54,
                  decoration: BoxDecoration(
                      color: white_1,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 20,
                        )
                      ]),
                  child: Row(
                    children: [
                      const Expanded(
                          child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'ابحث عن اسم القاعة',
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                        textDirection: TextDirection.rtl,
                        enableSuggestions: true,
                      )),
                      SvgPicture.asset(
                        'assets/icons/search.svg',
                        color: darkBlue,
                      )
                    ],
                  ),
                ))
          ]),
        ),
        // Column(
        //   children: List.generate(
        //     5,
        //     (index) {
        //       return Body_Of_Post();
        //     },
        //   ),
        // )
      ],
    );
  }

  AppBar appBar() {
    return AppBar(
      leading: const IconButton(
        icon: Icon(Icons.menu_rounded),
        onPressed: null,
      ),
    );
  }
}
