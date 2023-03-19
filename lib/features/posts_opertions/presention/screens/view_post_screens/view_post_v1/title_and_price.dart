import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utils/app_colors.dart';

class TitleAndPrice extends StatelessWidget {
  final String title, country;
  final int price;

  const TitleAndPrice({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: darkBlue,
                        fontSize: 5.sp,
                        // fontWeight: FontWeight.bold
                      ),
                ),
                TextSpan(
                  text: country,
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: darkBlue,
                    //  fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontSize: 5.sp, color: AppColors.blue),
          )
        ],
      ),
    );
  }
}
