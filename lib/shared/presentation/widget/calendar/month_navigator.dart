import 'package:flutter/material.dart';
import 'month_navigator_button.dart';
import 'package:intl/intl.dart';

class MonthNavigator extends StatelessWidget {
  final DateTime currentMonth;
  final VoidCallback previousMonth;
  final VoidCallback nextMonth;

  MonthNavigator({
    required this.currentMonth,
    required this.previousMonth,
    required this.nextMonth,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MonthNavigatorButton(
          onPressed: previousMonth,
          icon: Icon(Icons.arrow_back),
        ),
        Expanded(
          child: Center(
            child: Text(
              DateFormat.MMMM().format(currentMonth),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        MonthNavigatorButton(
          onPressed: previousMonth,
          icon: Icon(Icons.arrow_forward),
        ),
      ],
    );
  }
}
