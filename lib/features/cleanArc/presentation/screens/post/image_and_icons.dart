import 'package:flutter/material.dart';

import '../../../../../utils/app_colors.dart';
import 'icon_card.dart';

// ignore: must_be_immutable
class ImageAndIcons extends StatelessWidget {
  ImageAndIcons({Key? key, required this.height, required this.width})
      : super(key: key);

  Size? size;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: SizedBox(
        height: height * 0.44,
        width: double.infinity,
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          Column(children: const <Widget>[
            SizedBox(height: 37),
            IconCard(icon: Icon(Icons.calendar_month), text: 'التقويم'),
            IconCard(icon: Icon(Icons.people), text: 'العدد'),
            IconCard(icon: Icon(Icons.location_on), text: 'المكان '),
            IconCard(icon: Icon(Icons.favorite), text: 'safs')
          ]),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  margin: const EdgeInsets.only(left: 15),
                  height: double.infinity,
                  width: width * 0.85,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(23),
                        bottomLeft: Radius.circular(23),
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 1),
                            color: AppColors.blue.withOpacity(0.2))
                      ],
                      image: const DecorationImage(
                          alignment: Alignment.center,
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/a_1.jpg")))))
        ]),
      ),
    );
  }
}
