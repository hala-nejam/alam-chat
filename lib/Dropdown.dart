import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          children: [
            const Text('تاريخ الميلاد'),
            const SizedBox(width: 10),
            Expanded(
              child: DateTimeDropdownWidget(
                valueTextStyle: const TextStyle(),
                valuePaddingOut: const EdgeInsets.only(left: 5),
                initialDay: 1,
                initialMonth: 1,
                initialYear: 2000,
                boxDecoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.white38),
                  borderRadius: BorderRadius.circular(7),
                ),
                underlineColor: Colors.transparent,//الخط يروح
                onDayChanged: (int? day) {
                  print('Selected Day: $day');
                },
                onMonthChanged: (int? month) {
                  print('Selected Month: $month');
                },
                onYearChanged: (int? year) {
                  print('Selected Year: $year');
                },
              ),
            ),
          ],
        ),
      ),
    ),

    );
  }
}

// --------------------------------------------------------------

class DateTimeDropdownWidget extends StatefulWidget {
  const DateTimeDropdownWidget({
    required this.boxDecoration,
    required this.valueTextStyle,
    // super.key,
    this.initialDay,
    this.initialMonth,
    this.initialYear,
    this.days,
    this.months,
    this.years,
    this.onDayChanged,
    this.onMonthChanged,
    this.onYearChanged,
    this.isDayExpanded = true,
    this.isMonthExpanded = true,
    this.isYearExpanded = true,
    this.iconSize = 24.0,
    this.elevation = 16.0,
    this.showUnderline = true,
    this.underlineColor,
    this.underlineStyle,
    this.valuePaddingOut,
    this.boxHeight = 30,
    this.spacingBetweenBoxes = 10,
    this.dayHint = 'اليوم',
    this.monthHint = 'الشهر',
    this.yearHint = 'السنة',
    this.hintTextStyle,
  });

  final int? initialDay;
  final int? initialMonth;
  final int? initialYear;
  final List<int>? days;
  final List<String>? months;
  final List<int>? years;
  final ValueChanged<int?>? onDayChanged;
  final ValueChanged<int?>? onMonthChanged;
  final ValueChanged<int?>? onYearChanged;
  final bool isDayExpanded;
  final bool isMonthExpanded;
  final bool isYearExpanded;
  final double iconSize;
  final double elevation;
  final bool showUnderline;
  final Color? underlineColor;
  final UnderlineInputBorder? underlineStyle;
  final EdgeInsets? valuePaddingOut;
  final double? boxHeight;
  final Decoration boxDecoration;
  final double? spacingBetweenBoxes;
  final TextStyle? valueTextStyle;
  final String? dayHint;
  final String? monthHint;
  final String? yearHint;
  final TextStyle? hintTextStyle;

  @override
  _DateTimeDropdownWidgetState createState() => _DateTimeDropdownWidgetState();
}
// -----------------------------------------------
class _DateTimeDropdownWidgetState extends State<DateTimeDropdownWidget> {
  int? selectedDay;
  int? selectedMonth;
  int? selectedYear;

  List<int> days = [];
  List<String> months = [];
  List<int> years = [];

  @override
  void initState() {
    super.initState();
    selectedDay = widget.initialDay;
    selectedMonth = widget.initialMonth;
    selectedYear = widget.initialYear;

    days = widget.days ?? List.generate(31, (index) => index + 1);

    months = widget.months ??
        [
          'يناير',
          'فبراير',
          'مارس',
          'أبريل',
          'مايو',
          'يونيو',
          'يوليو',
          'أغسطس',
          'سبتمبر',
          'أكتوبر',
          'نوفمبر',
          'ديسمبر'
        ];
    years = widget.years ??
        List.generate(50, (index) => DateTime.now().year - index);
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: widget.boxHeight,
            decoration: widget.boxDecoration,
            child: DropdownButton<int>(
              value: selectedYear,
              // padding: widget.valuePaddingOut,
              hint: widget.yearHint != null
                  ? Text(
                widget.yearHint!,
                style: widget.hintTextStyle,
              )
                  : null,
              onChanged: (int? newValue) {
                setState(
                      () {
                    selectedYear = newValue!;
                  },
                );
                if (widget.onYearChanged != null) {
                  widget.onYearChanged!(newValue);
                }
              },
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: widget.iconSize,
              elevation: widget.elevation.toInt(),
              style: const TextStyle(color: Colors.black),
              underline: widget.showUnderline
                  ? Container(
                height: 2,
                color: widget.underlineColor ?? Colors.blue,
              )
                  : null,
              isExpanded: widget.isYearExpanded,
              items: years.map((int year) {
                return DropdownMenuItem<int>(
                  value: year,
                  child: Text(
                    year.toString(),
                    style: widget.valueTextStyle,
                  ),
                );
              }).toList(),
            ),
          ),
        ), //السنة
        SizedBox(width: widget.spacingBetweenBoxes),
        Expanded(
          child: Container(
            height: widget.boxHeight,
            decoration: widget.boxDecoration,
            child: DropdownButton<int>(
              value: selectedMonth,
              hint: widget.monthHint != null
                  ? Text(
                widget.monthHint!,
                style: widget.hintTextStyle,
              )
                  : null,
              onChanged: (int? newValue) {
                setState(() {
                  selectedMonth = newValue!;
                });
                if (widget.onMonthChanged != null) {
                  widget.onMonthChanged!(newValue);
                }
              },
              icon: const Icon(Icons.arrow_drop_down),
              // padding: widget.valuePaddingOut,
              iconSize: widget.iconSize,
              elevation: widget.elevation.toInt(),
              style: const TextStyle(color: Colors.black),
              underline: widget.showUnderline
                  ? Container(
                height: 2,
                color: widget.underlineColor ?? Colors.blue,
              )
                  : null,
              isExpanded: widget.isMonthExpanded,
              items: months.asMap().entries.map((entry) {
                final index = entry.key + 1;
                final month = entry.value;
                return DropdownMenuItem<int>(
                  value: index,
                  child: Text(
                    month,
                    style: widget.valueTextStyle,
                  ),
                );
              }).toList(),
            ),
          ),
        ),    //الشهر
        SizedBox(width: widget.spacingBetweenBoxes),
        Expanded(
          child: Container(
            height: widget.boxHeight,
            decoration: widget.boxDecoration,
            child: DropdownButton<int>(
              value: selectedDay,
              hint: widget.dayHint != null
                  ? Text(
                widget.dayHint!,
                style: widget.hintTextStyle,
              )
                  : null,
              onChanged: (int? newValue) {
                setState(() {
                  selectedDay = newValue!;
                });
                if (widget.onDayChanged != null) {
                  widget.onDayChanged!(newValue);
                }
              },
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: widget.iconSize,
              elevation: widget.elevation.toInt(),
              style: const TextStyle(color: Colors.black),
              underline: widget.showUnderline
                  ? Container(
                height: 2,
                color: widget.underlineColor ?? Colors.blue,
              )
                  : null,
              isExpanded: widget.isDayExpanded,
              // padding: widget.valuePaddingOut,
              items: days.map((int day) {
                return DropdownMenuItem<int>(
                  value: day,
                  child: Text(
                    day.toString(),
                    style: widget.valueTextStyle,
                  ),
                );
              }).toList(),
            ),
          ),
        ), // اليوم
      ],
    );
  }
}