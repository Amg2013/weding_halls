import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_strings.dart';

class FeedPost extends StatefulWidget {
  const FeedPost({super.key});

  @override
  State<FeedPost> createState() => _FeedPostState();
}

class _FeedPostState extends State<FeedPost> {
  //ImageSource =ImageSource.gallery ;
  @override
  Widget build(BuildContext context) {
    String selected = 'sfd';
    return Container(
      padding: const EdgeInsets.all(5),
      // height: MediaQuery.of(context).size.height * .8,
      width: MediaQuery.of(context).size.width * .95,
      child: Column(children: [
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
            const IconButton(onPressed: null, icon: Icon(Icons.list_sharp))
          ],
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      const Text(AppStrings.priceOfpost),
                      const Text(AppStrings.priceOfpost),
                      const Text(AppStrings.priceOfpost),
                      const Text(AppStrings.priceOfpost),
                      ElevatedButton.icon(
                          onPressed: null,
                          icon: const Icon(Icons.place),
                          label: const Text(AppStrings.location))
                    ]),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    margin: EdgeInsets.only(left: 10.w),
                    height: 250.h,
                    width: 250.w,
                    // child: NetworkImage('ssdf'),
                  )),
            ]),

        // this is the end of contoer and boxes

        RichText(
            textDirection: TextDirection.rtl,
            text: TextSpan(
                style: Theme.of(context).textTheme.bodyText2,
                children: const [
                  TextSpan(
                      text:
                          'مجمع قاعات البارون نادى طلائع الجيش لتنظيم وإقامة حفلات الزفاف والخطوبة واقامة الاجتماعات والمناسبات'),
                  TextSpan(text: '\n نادى طلائع الجيش بني سويف')
                ])),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
                width: MediaQuery.of(context).size.width / 2,
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
                textDirection: TextDirection.rtl,
                "         معلومات اكتر",
                style: TextStyle(
                  color: darkBlue,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
