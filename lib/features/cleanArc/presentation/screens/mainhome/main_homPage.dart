// ignore: file_names
// ignore_for_file: prefer_const_constructors
import '../../../../../utils/app_colors.dart';
import '../profile/profileScrean.dart';
import '../type_post.dart';
import '../../widgets/chip_widget.dart';
import '../../widgets/grid_child.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../calender/caleder.dart';

class MAINHOME extends StatefulWidget {
  const MAINHOME({super.key});

  @override
  State<MAINHOME> createState() => _MAINHOMEState();
}

class _MAINHOMEState extends State<MAINHOME> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ViwerOfposts(),
          ));
        },
        icon: const Icon(Icons.whatsapp),
        label: const Text('تواصل معانا '),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          const Icon(Icons.home),
          const Icon(Icons.add),
          IconButton(
              onPressed: (() {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MyCaleder()));
              }),
              icon: const Icon(Icons.calendar_month)),
          IconButton(
            onPressed: (() {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            }),
            icon: const Icon(Icons.person),
          ),
        ],
        onTap: (value) {
          if (value == 0) {
            Navigator.of(context).pushNamed('Calender');
          } else if (value == 1) {
            Navigator.of(context).pushNamed('Calender');
          } else {
            Navigator.of(context).pushNamed('Calender');
          }
        },
        animationDuration: const Duration(microseconds: 680),
        backgroundColor: AppColors.white_1,
        color: AppColors.darkBlue,
      ),

      //fixed body
      body:

          //  SingleChildScrollView(
          //   scrollDirection: Axis.vertical,
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Theme.of(context).backgroundColor,
              ),
              child: ListView(
                physics: const ClampingScrollPhysics(),
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          ' نورتنا ',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        ChipWidget(
                          label: Text(
                            'كل القاعات',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 25,
                      children: const [
                        GridChild(
                          count: 132,
                          description: 'قاعات كبيرة',
                          imagePath: 'assets/images/big.jpeg',
                        ),
                        GridChild(
                          count: 42,
                          description: 'قاعات مفتوحة',
                          imagePath: 'assets/images/open.jpeg',
                        ),
                        GridChild(
                          count: 42,
                          description: 'قاعات مغلقة',
                          imagePath: 'assets/images/phince.jpeg',
                        ),
                        GridChild(
                          count: 21,
                          description: 'قاعات صغيرة',
                          imagePath: 'assets/images/rang.jpeg',
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          'خدمات اخرى',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        ChipWidget(
                            label: Text(
                          'عرض الكل',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontWeight: FontWeight.w600),
                        ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.18,
                    child: ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(
                            left: index == 0 ? 16 : 0, right: 16),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/images/p_${index + 1}.jpg'))),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  )
                ],
              )),
    );
  }
}
