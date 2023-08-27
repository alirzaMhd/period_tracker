import 'package:flutter/material.dart';
import 'month_navigator_button.dart';
import 'package:intl/intl.dart';

class MonthNavigator extends StatelessWidget {
  final DateTime currentMonth;
  final VoidCallback previousMonthFunction;
  final VoidCallback nextMonthFunction;

  const MonthNavigator({
    super.key,
    required this.currentMonth,
    required this.previousMonthFunction,
    required this.nextMonthFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MonthNavigatorButton(
          onPressed: previousMonthFunction,
          //TODO
          icon: const Icon(Icons.arrow_back),
        ),
        Expanded(
          child: Center(
            child: Text(
              DateFormat.MMMM().format(currentMonth),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        MonthNavigatorButton(
          onPressed: previousMonthFunction,
          //TODO
          icon: const Icon(Icons.arrow_forward),
        ),
      ],
    );
  }
}
