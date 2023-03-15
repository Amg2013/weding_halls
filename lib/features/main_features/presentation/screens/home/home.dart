import 'package:flutter/material.dart';
import 'widgets/feateures_vertcal_list.dart';

import 'widgets/chip_widget.dart';
import 'widgets/grid_child.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).backgroundColor,
        ),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            const SizedBox(height: 20),
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
            const SizedBox(height: 16),
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
                      imagePath: 'assets/images/rang.jpeg')
                ],
              ),
            ),
            const SizedBox(height: 16),
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
            const SizedBox(height: 16),
            const FeatuersVerticaList(),
            const SizedBox(
              height: 25,
            )
          ],
        ));
  }
}
