import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'dashboard_screen.dart';

class AttendanceScreen extends StatefulWidget {
  AttendanceScreen({Key? key}) : super(key: key);

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  CalendarFormat format = CalendarFormat.week;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0XFFEEEEEE),
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => DashboardScreen()));
            // Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
          color: const Color(0XFF909090),
        ),
        title: const Text(
          'Attendance',
          style: TextStyle(
            color: Color(0XFF909090),
          ),
        ),
      ),
       body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 34,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Text('10', style: TextStyle(color: Color(0XFF2F6AEC), fontSize: 18,),),
                            Text('Present',style: TextStyle(color: Color(0XFF909090,),),),
                          ],
                        ),
                        Column(
                          children: const [
                            Text('01', style: TextStyle(color: Color(0XFFFD9E00), fontSize: 18,),),
                            Text('Late',style: TextStyle(color: Color(0XFF909090,),),),
                          ],
                        ),
                        Column(
                          children: const [
                            Text('00', style: TextStyle(color: Color(0XFFFF5C39), fontSize: 18,),),
                            Text('Absent',style: TextStyle(color: Color(0XFF909090,),),),
                          ],
                        ),
                        Column(
                          children: const [
                            Text('22', style: TextStyle(color: Color(0XFF222222), fontSize: 18,),),
                            Text('Total',style: TextStyle(color: Color(0XFF909090,),),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
            padding: const EdgeInsets.only(top: 52,),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(9),
              ),
              // height: MediaQuery.of(context).size.height * .4,
              width: MediaQuery.of(context).size.width,
              child: TableCalendar(
                focusedDay: selectedDay,
                firstDay: DateTime(1990),
                lastDay: DateTime(2050),
                holidayPredicate: (date) {
                  return date.day == 1 || date.day == 21 || date.day == 22;
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
                padding: const EdgeInsets.only(top: 21),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 15, left: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 18,
                          bottom: 15,
                        ),
                        child: Row(
                          
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Check-in',style: TextStyle(color: Color(0XFF505050), fontWeight: FontWeight.w600, fontSize: 15,),),
                                Text('09:30 AM',style: TextStyle(color: Color(0XFF0A9250), fontWeight: FontWeight.w400, fontSize: 15,),),
                                
                              ],
                            ),
                            SizedBox(width: 38,),
                            Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('Check-out',style: TextStyle(color: Color(0XFF505050), fontWeight: FontWeight.w600, fontSize: 15,),),
                                Text('06:58 PM',style: TextStyle(color: Color(0XFFFF5C39), fontWeight: FontWeight.w400, fontSize: 15,),),
                                
                              ],
                            ),
                            
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 21),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 15, left: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 18,
                          bottom: 15,
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Check-in',style: TextStyle(color: Color(0XFF505050), fontWeight: FontWeight.w600, fontSize: 15,),),
                                Text('09:30 AM',style: TextStyle(color: Color(0XFF0A9250), fontWeight: FontWeight.w400, fontSize: 15,),),
                                
                              ],
                            ),
                            SizedBox(width: 38,),
                            Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('Check-out',style: TextStyle(color: Color(0XFF505050), fontWeight: FontWeight.w600, fontSize: 15,),),
                                Text('06:58 PM',style: TextStyle(color: Color(0XFFFF5C39), fontWeight: FontWeight.w400, fontSize: 15,),),
                                
                              ],
                            ),
                            
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 21),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 15, left: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 18,
                          bottom: 15,
                        ),
                        child: Row(
                         
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Check-in',style: TextStyle(color: Color(0XFF505050), fontWeight: FontWeight.w600, fontSize: 15,),),
                                Text('09:30 AM',style: TextStyle(color: Color(0XFF0A9250), fontWeight: FontWeight.w400, fontSize: 15,),),
                                
                              ],
                            ),
                            SizedBox(width: 38,),
                            Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('Check-out',style: TextStyle(color: Color(0XFF505050), fontWeight: FontWeight.w600, fontSize: 15,),),
                                Text('06:58 PM',style: TextStyle(color: Color(0XFFFF5C39), fontWeight: FontWeight.w400, fontSize: 15,),),
                                
                              ],
                            ),
                            
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 21),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 15, left: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 18,
                          bottom: 15,
                        ),
                        child: Row(
                          
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Check-in',style: TextStyle(color: Color(0XFF505050), fontWeight: FontWeight.w600, fontSize: 15,),),
                                Text('09:30 AM',style: TextStyle(color: Color(0XFF0A9250), fontWeight: FontWeight.w400, fontSize: 15,),),
                                
                              ],
                            ),
                            SizedBox(width: 38,),
                            Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('Check-out',style: TextStyle(color: Color(0XFF505050), fontWeight: FontWeight.w600, fontSize: 15,),),
                                Text('06:58 PM',style: TextStyle(color: Color(0XFFFF5C39), fontWeight: FontWeight.w400, fontSize: 15,),),
                                
                              ],
                            ),
                            
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 21),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 15, left: 10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 18,
                          bottom: 15,
                        ),
                        child: Row(
                         
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Check-in',style: TextStyle(color: Color(0XFF505050), fontWeight: FontWeight.w600, fontSize: 15,),),
                                Text('09:30 AM',style: TextStyle(color: Color(0XFF0A9250), fontWeight: FontWeight.w400, fontSize: 15,),),
                                
                              ],
                            ),
                            SizedBox(width: 38,),
                            Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('Check-out',style: TextStyle(color: Color(0XFF505050), fontWeight: FontWeight.w600, fontSize: 15,),),
                                Text('06:58 PM',style: TextStyle(color: Color(0XFFFF5C39), fontWeight: FontWeight.w400, fontSize: 15,),),
                                
                              ],
                            ),
                            
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
       ),
    );
  }
}