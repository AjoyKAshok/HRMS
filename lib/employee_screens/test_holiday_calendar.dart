import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
   CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  late Map<DateTime, List> _events;
  DateTime _selectedDay = DateTime.now();

  @override
  void initState() {
    super.initState();
    _events = {
      DateTime(2023, 1, 1): ['New Year\'s Day'],
      DateTime(2023, 1, 26): ['Republic Day'],
      DateTime(2023, 2, 14): ['Valentine\'s Day'],
      DateTime(2023, 4, 1): ['April Fool\'s Day'],
      DateTime(2023, 5, 1): ['May Day'],
      DateTime(2023, 5, 5): ['Cinco de Mayo'],
      DateTime(2023, 8, 15): ['Independence Day'],
      DateTime(2023, 12, 25): ['Christmas Day'],
    };
  }

  Widget _buildCalendar() {
    return TableCalendar(
      focusedDay: selectedDay,
                firstDay: DateTime(1990),
                lastDay: DateTime(2050),
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
      ),
      calendarStyle: const CalendarStyle(
        holidayTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
        todayTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        selectedTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        selectedDecoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        weekendTextStyle: TextStyle(
          color: Colors.blue,
        ),
      ),
      // onDaySelected: (date, events, _) {
      //   setState(() {
      //     _selectedDay = date;
      //   });
      // },
       calendarFormat: format,
                onFormatChanged: (CalendarFormat _format) {
                  setState(() {
                    format = _format;
                  });
                },
       onDaySelected: (DateTime selectDay, DateTime focusDay) {
                  setState(() {
                    selectedDay = selectDay;
                    focusedDay = focusDay;
                  });
                  print(focusedDay);
                },
      selectedDayPredicate: (date) {
        return isSameDay(date, _selectedDay);
      },
      // Here we define a function that returns the list of holidays for a given month
       holidayPredicate: (date) {
                  if (date.month == 1) {
                    return date.day == 1 || date.day == 26;
                  } 
                  else if (date.month == 2) {
                    return date.day == 14;
                  } else if (date.month == 4) {
                    return date.day == 1 || date.day == 21 || date.day == 22;
                  } else if (date.month == 5) {
                    return date.day == 1 || date.day == 5;
                  } else if (date.month == 8) {
                    return date.day == 15 || date.day == 17;
                  } else if (date.month == 12) {
                    return date.day == 25;
                  }else
                    return date.day == 0;
                },
      // holidayPredicate: (date) {
      //   final holidays = _events.keys.where(
      //     (eventDate) => isSameMonth(date, eventDate),
      //   );
      //   return holidays.toList();
      // },
    );
  }

  Widget _buildHolidayList() {
    final selectedEvents = _events[_selectedDay] ?? [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Holidays',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 8),
        Expanded(
          child: ListView.builder(
            itemCount: selectedEvents.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(selectedEvents[index]),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Calendar'),
      // ),
      body: Container(
         
          height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(top: 110),
          
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 
                _buildCalendar(),
                SizedBox(height: 16),
                _buildHolidayList(),
              ],
            ),
          ),
      ),
      
    );
  }
}
