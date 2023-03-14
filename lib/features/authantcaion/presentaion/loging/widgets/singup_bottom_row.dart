import 'package:flutter/material.dart';

import '../../../../../utils/app_strings.dart';
import '../../singup/singup.dart';

class MoveToSingUp extends StatelessWidget {
  const MoveToSingUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: const Text(AppStrings.haventAccount),
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const SingUp(),
            ),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: const Text(
              AppStrings.makeNewAccount,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
