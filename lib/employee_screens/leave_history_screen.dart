import 'package:flutter/material.dart';

import 'dashboard_screen.dart';

class LeaveHistory extends StatefulWidget {
  LeaveHistory({Key? key}) : super(key: key);

  @override
  State<LeaveHistory> createState() => _LeaveHistoryState();
}

class _LeaveHistoryState extends State<LeaveHistory> {
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
          'Leave History',
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
                padding: EdgeInsets.only(
                  top: 22,
                ),
                child: Container(
                  height: 22,
                  width: 119,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text('21 February 2023'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Alexander John'),
                                Text('14/01/2023 - 16/01/2023'),
                                Text('Sick Leave Request'),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, bottom: 28, right: 10, left: 39),
                              child: Container(
                                height: 26,
                                width: 76,
                                decoration: BoxDecoration(
                                  color: const Color(0XFFDCFCE4),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Accepted',
                                    style: TextStyle(
                                      color: Color(0XFF5CCC78),
                                    ),
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
                padding: EdgeInsets.only(
                  top: 22,
                ),
                child: Container(
                  height: 22,
                  width: 119,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text('21 February 2023'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Alexander John'),
                                Text('14/01/2023 - 16/01/2023'),
                                Text('Sick Leave Request'),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, bottom: 28, right: 10, left: 39),
                              child: Container(
                                height: 26,
                                width: 76,
                                decoration: BoxDecoration(
                                  color: const Color(0XFFDCFCE4),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Accepted',
                                    style: TextStyle(
                                      color: Color(0XFF5CCC78),
                                    ),
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
                padding: EdgeInsets.only(
                  top: 22,
                ),
                child: Container(
                  height: 22,
                  width: 119,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text('21 February 2023'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Alexander John'),
                                Text('14/01/2023 - 16/01/2023'),
                                Text('Sick Leave Request'),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, bottom: 28, right: 10, left: 39),
                              child: Container(
                                height: 26,
                                width: 76,
                                decoration: BoxDecoration(
                                  color: const Color(0XFFDCFCE4),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Accepted',
                                    style: TextStyle(
                                      color: Color(0XFF5CCC78),
                                    ),
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
                padding: EdgeInsets.only(
                  top: 22,
                ),
                child: Container(
                  height: 22,
                  width: 119,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text('21 February 2023'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Alexander John'),
                                Text('14/01/2023 - 16/01/2023'),
                                Text('Sick Leave Request'),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, bottom: 28, right: 10, left: 39),
                              child: Container(
                                height: 26,
                                width: 76,
                                decoration: BoxDecoration(
                                  color: const Color(0XFFDCFCE4),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Accepted',
                                    style: TextStyle(
                                      color: Color(0XFF5CCC78),
                                    ),
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
                padding: EdgeInsets.only(
                  top: 22,
                ),
                child: Container(
                  height: 22,
                  width: 119,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text('21 February 2023'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Alexander John'),
                                Text('14/01/2023 - 16/01/2023'),
                                Text('Sick Leave Request'),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, bottom: 28, right: 10, left: 39),
                              child: Container(
                                height: 26,
                                width: 76,
                                decoration: BoxDecoration(
                                  color: const Color(0XFFDCFCE4),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Accepted',
                                    style: TextStyle(
                                      color: Color(0XFF5CCC78),
                                    ),
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
                padding: EdgeInsets.only(
                  top: 22,
                ),
                child: Container(
                  height: 22,
                  width: 119,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text('21 February 2023'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Alexander John'),
                                Text('14/01/2023 - 16/01/2023'),
                                Text('Sick Leave Request'),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, bottom: 28, right: 10, left: 39),
                              child: Container(
                                height: 26,
                                width: 76,
                                decoration: BoxDecoration(
                                  color: const Color(0XFFDCFCE4),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Accepted',
                                    style: TextStyle(
                                      color: Color(0XFF5CCC78),
                                    ),
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
            ],
          ),
        ),
      ),
    );
  }
}
