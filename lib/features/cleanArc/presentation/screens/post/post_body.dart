// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import '../../../data/models/post.dart';
import 'title_and_price.dart';

import '../../../../../utils/app_colors.dart';

import 'image_and_icons.dart';

class BodyOfPost extends StatefulWidget {
  const BodyOfPost({super.key});

  @override
  State<BodyOfPost> createState() => _BodyOfPostState();
}

class _BodyOfPostState extends State<BodyOfPost> {
  var post_view = Post(
      postType: ' small hall',
      logoImage: null,
      userName: 'userName',
      postImage: null,
      day: 'day',
      numbers: '55',
      loction: 'loction',
      price: '500',
      postName: 'postName');

  get userName => null;

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size * 0.6;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.cyan,
      body: Container(
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
                  post_view.userName!,
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
            const TitleAndPrice(
                title: "الماسة", country: "قاعة صغيرة", price: 440),
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
      ),
    );
  }
}
