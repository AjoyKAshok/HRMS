import 'package:flutter/material.dart';
import 'package:hrms/employee_screens/attendance_screen.dart';
import 'package:hrms/employee_screens/dashboard_screen.dart';
import 'package:hrms/employee_screens/payslip_screen.dart';

import 'leave_history_screen.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // centerTitle: false,
          toolbarHeight: 50,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => DashboardScreen()));
            },
            icon: const Icon(Icons.arrow_back),
            color: Color(0XFF909090),
          ),
          title: Text('Category'),
        ),
        body: Stack(
        children: [
          SingleChildScrollView(
            // child: Padding(
            //   padding: const EdgeInsets.only(top: 116.0, left: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Padding(
                    padding: EdgeInsets.only(top: 23, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                           onTap: () {
                                     Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              AttendanceScreen()));
                                  },
                          child: Container(
                            height: 114,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0XFFFFFFFF),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15.0, left: 25, right: 25),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      color: Color(0XFF2F6AEC),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(Icons.calendar_month,
                                        color: Colors.white),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    top: 17,
                                  ),
                                  child: Text(
                                    'Attendence',
                                    style: TextStyle(
                                      color: Color(0XFF909090),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                                     Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              PaySlipScreen()));
                                  },
                          child: Container(
                            height: 114,
                            width: 100,
                            decoration: BoxDecoration(
                              color: const Color(0XFFFFFFFF),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15.0, left: 25, right: 25),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      color: Color(0XFFFF5C39),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(Icons.alarm_on_rounded,
                                        color: Colors.white),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    top: 17,
                                  ),
                                  child: Text(
                                    'Pay Slip',
                                    style: TextStyle(
                                      color: Color(0XFF909090),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                                     Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              LeaveHistory()));
                                  },
                          child: Container(
                            height: 114,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0XFFFFFFFF),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15.0, left: 25, right: 25),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      color: Color(0XFF28A205),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(Icons.account_box_outlined,
                                        color: Colors.white),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    top: 17,
                                  ),
                                  child: Text(
                                      'Leave History',
                                      style: TextStyle(
                                        color: Color(0XFF909090),
                                      ),
                                    ),
                                  
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 23, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 114,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0XFFFFFFFF),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15.0, left: 25, right: 25),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    color: Color(0XFF00B8DC),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(Icons.alarm_on_rounded,
                                      color: Colors.white),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 17,
                                ),
                                child: Text(
                                  'Apply Leave',
                                  style: TextStyle(
                                    color: Color(0XFF909090),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 114,
                          width: 100,
                          decoration: BoxDecoration(
                            color: const Color(0XFFFFFFFF),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15.0, left: 25, right: 25),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    color: Color(0XFFB628A8),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(Icons.calendar_today_outlined,
                                      color: Colors.white),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 17,
                                ),
                                child: Text(
                                  'Holidays',
                                  style: TextStyle(
                                    color: Color(0XFF909090),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 114,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0XFFFFFFFF),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15.0, left: 25, right: 25),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    color: Color(0XFFFFAA00),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(Icons.calendar_today,
                                      color: Colors.white),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 17,
                                ),
                                child: Text(
                                  'Resignation',
                                  style: TextStyle(
                                    color: Color(0XFF909090),
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
            // ),
          ),
        ],
      ),
    );
  }
}