// ignore_for_file: unnecessary_nullable_for_final_variable_declarations, prefer_const_declarations, unused_local_variable

import 'package:flutter/material.dart';

import '../../../../../utils/app_colors.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

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
      height: height * 0.71,
      decoration: BoxDecoration(color: AppColors.white_1),
      child: Column(
        children: <Widget>[
          // for logo and name
          Row(
            children: [
              Container(
                  height: 50,
                  padding: const EdgeInsets.only(left: 7),
                  child: CircleAvatar(
                    backgroundColor: cyan,
                  )),
              Divider(
                color: darkBlue,
                thickness: 2,
              ),
              // ignore: prefer_const_constructors
              Text(
                'sdf',
                style: const TextStyle(),
              ),
              const Spacer(),
              const IconButton(
                  onPressed: null,
                  icon: Icon(Icons.settings_input_component_sharp))
            ],
          ),
          // ignore: prefer_const_constructors

          ImageAndIcons(
            height: height,
            width: height,
          ),
          // titel of holle
          TitleAndPrice(
            title: postName.toString(),
            country: postType.toString(),
            price: int.parse(price),
          ),
          // tow buttoms
          Row(
            children: <Widget>[
              SizedBox(
                  width: width / 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.cyan,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "احجز الان",
                        style: TextStyle(
                          color: white_1,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  )),
              TextButton(
                onPressed: () {},
                child: Text(
                  "معلومات اكتر",
                  style: TextStyle(
                    color: darkBlue,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
