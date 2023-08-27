import 'package:flutter/material.dart';
import 'package:period_tracker/constants/constants.dart';

class DayCell extends StatelessWidget {
  final DateTime day;
  final bool isCurrentMonth;
  final DateTime selectedDate;
  final Function(DateTime) selectDate;
  final DateTime? periodDay;
  final int? howMuchPeriodTakes;
  //TODO:learn more about Ovulation
  final DateTime? ovulationDay;
  final int? howMuchOvulationTakes;

  const DayCell({
    Key? key,
    required this.day,
    required this.isCurrentMonth,
    required this.selectedDate,
    required this.selectDate,
    this.periodDay,
    this.howMuchPeriodTakes,
    this.ovulationDay,
    this.howMuchOvulationTakes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isSelected = day.isAtSameMomentAs(selectedDate);
    final bool isPeriodNeeded = periodDay != null && howMuchPeriodTakes != null;
    final bool isOvulationNeeded =
        ovulationDay != null && howMuchOvulationTakes != null;

    final bool isPeriodDay = isPeriodNeeded &&
        day.difference(periodDay!).inDays >= 0 &&
        day.difference(periodDay!).inDays <= howMuchPeriodTakes!;

    //TODO:learn more about Ovulation
    final bool isOvulationDay = isOvulationNeeded &&
        day.difference(ovulationDay!).inDays >= 0 &&
        day.difference(ovulationDay!).inDays <= howMuchOvulationTakes!;

    final bool isToday = day.isAtSameMomentAs(DateTime.now());
    
    //TODO
    // Color backgroundColor = isOvulationDay?
    //     : isPeriodDay
    //         ? Colors.pink
    //         : Colors.transparent;

    Color borderColor = isSelected
        ? Pallete.greenColor
        : isToday
            ? Pallete.redColor
            : Pallete.whiteColor;

    Color textColor = isSelected
        ? Pallete.whiteColor
        : (isCurrentMonth ? Pallete.blackColor : Pallete.lightGreyColor);

    return Expanded(
      child: GestureDetector(
        onTap: selectDate(day),
        child: AspectRatio(
          aspectRatio: 1.0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(UIConstants.dayCellRoundness),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: borderColor,
                  width: UIConstants.dayCellBorderWidth,
                ),
              ),
              child: Center(
                child: Text(
                  day.day.toString(),
                  style: TextStylesConstants.bodyMedium(context)?.copyWith(
                    color: textColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
