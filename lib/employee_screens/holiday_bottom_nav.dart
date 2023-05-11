import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'dashboard_screen.dart';

class HolidayNavBar extends StatefulWidget {
  HolidayNavBar({Key? key}) : super(key: key);

  @override
  State<HolidayNavBar> createState() => _HolidayNavBarState();
}

class _HolidayNavBarState extends State<HolidayNavBar> {
CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  // late CalendarController _calendarController;
  TextEditingController _eventController = TextEditingController();

  final List<DateTime> toHighlight = [];

  Map<DateTime, List<dynamic>> _getHolidays() {
    Map<DateTime, List<dynamic>> holidays = {
      DateTime(2023, 1, 26): ['Republic Day'],
      DateTime(2023, 4, 21): ['Easter Sunday'],
      DateTime(2023, 4, 22): ['Easter Monday'],
      DateTime(2023, 5, 1): ['May Day'],
      DateTime(2023, 8, 17): ['AJs BirthDay'],
      DateTime(2023, 8, 15): ['Independence Day'],
    };
    return holidays;
  }

  @override
  void dispose() {
    _eventController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEEEEEE),
      // appBar: AppBar(
      //   toolbarHeight: 50,
      //   backgroundColor: Colors.white,
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pushReplacement(
      //           context,
      //           MaterialPageRoute(
      //               builder: (BuildContext context) => DashboardScreen()));
      //       // Navigator.of(context).pop();
      //     },
      //     icon: const Icon(Icons.arrow_back),
      //     color: const Color(0XFF909090),
      //   ),
      //   title: const Text(
      //     'Holiday Calendar',
      //     style: TextStyle(
      //       color: Color(0XFF909090),
      //     ),
      //   ),
      // ),
      body: Column(
        children: [
          //defining min an max years
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 110, right: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(9),
              ),
              height: MediaQuery.of(context).size.height * .45,
              width: MediaQuery.of(context).size.width,
              child: TableCalendar(
                focusedDay: selectedDay,
                firstDay: DateTime(1990),
                lastDay: DateTime(2050),
                holidayPredicate: (date) {
                  if (date.month == 1) {
                    return date.day == 26;
                  } else if (date.month == 4) {
                    return date.day == 1 || date.day == 21 || date.day == 22;
                  } else if (date.month == 5) {
                    return date.day == 1;
                  } else if (date.month == 8) {
                    return date.day == 15 || date.day == 17;
                  } else
                    return date.day == 0;
                },
                //changing calendar format
                calendarFormat: format,
                onFormatChanged: (CalendarFormat _format) {
                  setState(() {
                    format = _format;
                  });
                },
                startingDayOfWeek: StartingDayOfWeek.monday,
                daysOfWeekVisible: true,

                //Day Changed on select
                onDaySelected: (DateTime selectDay, DateTime focusDay) {
                  setState(() {
                    selectedDay = selectDay;
                    focusedDay = focusDay;
                  });
                  print(focusedDay);
                },
                selectedDayPredicate: (DateTime date) {
                  return isSameDay(selectedDay, date);
                },

                //To style the Calendar
                calendarStyle: CalendarStyle(
                  isTodayHighlighted: true,
                  holidayDecoration: BoxDecoration(
                    color: Color(0XFFE43700),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  holidayTextStyle: TextStyle(color: Colors.white),
                  selectedDecoration: BoxDecoration(
                    color: Color(0XFF0A9250),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  selectedTextStyle: TextStyle(color: Colors.white),
                  todayDecoration: BoxDecoration(
                    color: Colors.blueGrey,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  defaultDecoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  weekendDecoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                headerStyle: HeaderStyle(
                  leftChevronIcon:
                      const Icon(Icons.chevron_left, color: Color(0XFF0A9250)),
                  rightChevronIcon:
                      const Icon(Icons.chevron_right, color: Color(0XFF0A9250)),
                  formatButtonVisible: true,
                  titleCentered: true,
                  titleTextStyle: TextStyle(
                    color: Color(0XFF0A9250),
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                  ),
                  formatButtonShowsNext: false,
                  formatButtonDecoration: BoxDecoration(
                    color: Color(0XFF0A9250),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  formatButtonTextStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                          top: 5,
                          bottom: 5,
                        ),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Color(0XFFCBFDE5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                          top: 5,
                          bottom: 5,
                        ),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Color(0XFFFFE2E2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                          top: 5,
                          bottom: 5,
                        ),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Color(0XFFDFE9FF),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
