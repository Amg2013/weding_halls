// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class AouthForm extends StatefulWidget {
  const AouthForm({super.key, required Type Aouttype});

  @override
  State<AouthForm> createState() => _AouthFormState();
}

// ignore: camel_case_types
class _AouthFormState extends State<AouthForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
            child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'ادخل اسم المستخدم',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'ادخل كلمة السر',
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 30))
          ],
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushNamed("MAINHOME");
                  },
                  icon: Icon(Icons.facebook),
                  label: Text('لصاحب القاعة')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushNamed("MAINHOME");
                  },
                  icon: Icon(Icons.person),
                  label: Text('للعريس')),
            ),
          ],
        )
      ],
    );
  }
}
