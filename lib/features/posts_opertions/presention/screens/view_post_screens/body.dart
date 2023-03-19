// ignore_for_file: unnecessary_nullable_for_final_variable_declarations, prefer_const_declarations, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/app_colors.dart';
import 'view_post_v1/image_and_icons.dart';
import 'view_post_v1/title_and_price.dart';

class BodyPost extends StatefulWidget {
  const BodyPost({super.key});

  @override
  State<BodyPost> createState() => _BodyPostState();
}

class _BodyPostState extends State<BodyPost> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final String? postType = 'defult';
    final Image? logoImage;
    final String? userName = 'defult';
    final Image? postImage;
    final String? day = 'defult';
    final String? numbers = 'defult';
    final String? loction = 'defult';
    var price = '90';
    final String? postName = 'defult';

    return Container(
      height: height * 0.6,
      decoration: BoxDecoration(color: AppColors.white_1),
      child: Column(
        children: <Widget>[
          // for logo and name
          Row(
            children: [
              Container(
                  height: 40.h,
                  padding: EdgeInsets.only(left: 7.h),
                  child: CircleAvatar(
                    backgroundColor: cyan,
                  )),
              Divider(
                color: darkBlue,
                thickness: 1,
              ),
              // ignore: prefer_const_constructors
              Text(
                '  sdf',
                style: TextStyle(fontSize: 15.sp),
              ),
              const Spacer(),
              const IconButton(
                  onPressed: null,
                  icon: Icon(Icons.settings_input_component_sharp))
            ],
          ),
          // ignore: prefer_const_constructors

          ImageAndIcons(
            height: height * .7,
            width: width * .8,
          ),
          // titel of holle
          TitleAndPrice(
            title: postName.toString(),
            country: postType.toString(),
            price: int.parse(price),
          ),
          // tow buttoms
        ],
      ),
    );
  }
}
