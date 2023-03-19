import 'package:flutter/material.dart';

import '../loging/login.dart';

class AlredayHaveAcount extends StatelessWidget {
  const AlredayHaveAcount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: const Text('تسجيل دخول ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ))),
        GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          )),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: const Text(' !بالفعل لدي حساب '),
          ),
        ),
      ],
    );
  }
}
