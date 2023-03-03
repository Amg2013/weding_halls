import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter/material.dart';

class MyCaleder extends StatefulWidget {
  const MyCaleder({super.key});

  @override
  State<MyCaleder> createState() => _MyCalederState();
}

class _MyCalederState extends State<MyCaleder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            height: 500,
            child: SfCalendar(
              view: CalendarView.month,
            )));
  }
}
