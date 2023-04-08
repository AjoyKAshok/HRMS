import 'package:flutter/material.dart';
import 'package:hrms/employee_screens/category_screen.dart';
import 'package:hrms/employee_screens/leave_history_screen.dart';
import 'package:hrms/employee_screens/leave_request_screen.dart';
import 'package:hrms/employee_screens/payslip_screen.dart';

import 'attendance_screen.dart';

class DashBoard extends StatefulWidget {
  DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  TextEditingController searchTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 116.0, left: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hello,',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF505050),
                    ),
                  ),
                  const Text(
                    'Alexander John',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF0A9250),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 19, right: 20),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: searchTextController,
                          decoration: const InputDecoration(
                            hintText: 'Search here',
                            hintStyle: TextStyle(
                              color: Color(0XFFCACACA),
                              fontSize: 14,
                            ),
                            border: InputBorder.none,
                            fillColor: Colors.white,
                            suffixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 26),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Category'),
                          Padding(
                            padding: const EdgeInsets.only(right: 13.0),
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              CategoryScreen()));
                                },
                                child: Text('View All')),
                          ),
                        ],
                      ),
                    ),
                  ),
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
                    padding: const EdgeInsets.only(top: 26),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Recent Leave Request'),
                          Padding(
                            padding: EdgeInsets.only(right: 13.0),
                            child: GestureDetector(onTap: () {
                               Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              LeaveRequests()));
                            }, child: Text('View All')),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 32,
                      right: 20,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      decoration: BoxDecoration(
                        color: const Color(0XFFFFFFFF),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0XFF909090),
                                ),
                                child: const Icon(
                                  Icons.person_outline,
                                  color: Colors.white,
                                  size: 42,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Alexander John'),
                                Text('14-Jan-2023 to 16-Jan-2023'),
                                Text('Sick Leave Request'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7, right: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 24,
                                  width: 76,
                                  decoration: BoxDecoration(
                                    color: const Color(0XFFFEF6E6),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(
                                      left: 13,
                                      top: 6.0,
                                      right: 12,
                                      bottom: 5,
                                    ),
                                    child: Text(
                                      'Pending',
                                      style: TextStyle(
                                        color: Color(0XFFF7AE18),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 26),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Attendence of Current Month'),
                          // Padding(
                          //   padding: EdgeInsets.only(right: 13.0),
                          //   child: Text('View All'),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 32,
                    ),
                    child: Container(
                      height: 160,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 148,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10.0,
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Container(
                                    height: 108,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Color(0XFFFFF3DA),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.alarm,
                                          size: 34,
                                          color: Color(0XFF505050),
                                        ),
                                        Text('17'),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Text('Late Attendence'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 148,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10.0,
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Container(
                                    height: 108,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Color(0XFFFFEAE6),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.alarm_off,
                                          size: 34,
                                          color: Color(0XFF505050),
                                        ),
                                        Text('12 '),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Text('Absent'),
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
        ],
      ),
    );
  }
}
