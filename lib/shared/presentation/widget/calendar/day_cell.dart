import 'package:flutter/material.dart';
import 'package:period_tracker/constants/constants.dart';
import 'package:period_tracker/shared/domain/provider/provider.dart';
import 'package:period_tracker/shared/domain/use_cases/use_cases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DayCell extends ConsumerWidget {
  final DateTime day;
  final bool isCurrentMonth;
  final DateTime? periodDay;
  final int? howMuchPeriodTakes;
  //TODO:learn more about Ovulation
  final DateTime? ovulationDay;
  final int? howMuchOvulationTakes;

  const DayCell({
    Key? key,
    required this.day,
    required this.isCurrentMonth,
    this.periodDay,
    this.howMuchPeriodTakes,
    this.ovulationDay,
    this.howMuchOvulationTakes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectDateProvider =
        StateNotifierProvider<SelectDateProvider, DateTime>(
            (ref) => SelectDateProvider());
    DateTime selectedDate = ref.watch(selectDateProvider);

    final bool isSelected =
        CalendarUseCases.isSelected(day: day, selectedDate: selectedDate);
    final bool isPeriodNeeded = periodDay != null && howMuchPeriodTakes != null;
    bool isPeriodDay = false;
    bool isOvulationDay = false;

    if (isPeriodNeeded) {
      isPeriodDay = CalendarUseCases.isPeriodDay(
          day: day,
          periodDay: periodDay!,
          howMuchPeriodTakes: howMuchPeriodTakes!);

      //TODO:learn more about Ovulation
      isOvulationDay = CalendarUseCases.isOvulationDay(
          day: day,
          ovulationDay: ovulationDay!,
          howMuchOvulationTakes: howMuchOvulationTakes!);
    }

    final bool isToday = CalendarUseCases.isToday(day: day);

    final bool isOccasionOrSelected = CalendarUseCases.isOccasionOrSelected(
        isPeriodDay: isPeriodDay,
        isOvulationDay: isOvulationDay,
        isSelected: isSelected);
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

    Color textColor = isOccasionOrSelected
        ? Pallete.whiteColor
        : (isCurrentMonth ? Pallete.blackColor : Pallete.lightGreyColor);

    return Expanded(
      child: GestureDetector(
        onTap: () => ref.read(selectDateProvider.notifier).selectDate(day),
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
