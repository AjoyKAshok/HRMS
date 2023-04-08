import 'package:flutter/material.dart';
import 'package:hrms/employee_screens/chat_screen.dart';
import 'package:hrms/employee_screens/dashboard.dart';
import 'package:hrms/employee_screens/holiday_calendar_screen.dart';
import 'package:hrms/employee_screens/profile_screen.dart';
import 'package:hrms/employee_screens/report_screen.dart';

import '../utils/menu.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  AppBar _getAppBar() {
    switch (_currentIndex) {
      case 0:
        return AppBar(
          toolbarHeight: 60,
          backgroundColor: Colors.white,
          elevation: 0,
          // iconTheme: IconThemeData(color: orange),
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Image.asset(
                "assets/images/NewRMSMenu.png",
                height: 25,
                width: 44,
                color: Color(0XFF505050),
              ),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Image(
                height: 30,
                image: AssetImage('assets/images/HRMS.png'),
              ),
              Icon(Icons.notifications_active_outlined,
                  color: Color(0XFF909090)),
            ],
          ),
        );
      case 1:
        return AppBar(
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
          title: Text('Reports'),
        );
      case 2:
        return AppBar(
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
          title: Text('Holiday Calendar'),
        );
      case 3:
        return AppBar(
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
          title: Text('Profile'),
        );
      default:
        return AppBar(
          toolbarHeight: 60,
          backgroundColor: Colors.white,
          elevation: 0,
          // iconTheme: IconThemeData(color: orange),
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Image.asset(
                "assets/images/NewRMSMenu.png",
                height: 25,
                width: 44,
                color: Color(0XFF505050),
              ),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Image(
                height: 30,
                image: AssetImage('assets/images/HRMS.png'),
              ),
              Icon(Icons.notifications_active_outlined,
                  color: Color(0XFF909090)),
            ],
          ),
        );
    }
  }

  Widget _getTabBarView() {
    return TabBarView(
        children: [
          _currentIndex == 0
              ? DashBoard()
              : _currentIndex == 1
                  ? ReportScreen()
                  : _currentIndex == 2
                      ? HolidayCalendarScreen()
                      : ProfileScreen(),

        //  DashBoard(),
         ReportScreen(),
         HolidayCalendarScreen(),
         ProfileScreen(),
        ],
      
    );
  }

  // final List<Widget> _children = [
  //   DashBoard(),
  //   ReportScreen(),
  //   ChatScreen(),
  //   ProfileScreen(),
  // ];

  
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DefaultTabController(
          length: 4,
          child: Scaffold(
            extendBodyBehindAppBar: true,
            // primary: false,
            backgroundColor: Color(0XFFEEEEEE),
            
            appBar: _getAppBar(),
            // PreferredSize(
            //   preferredSize: Size.fromHeight(100.0),
            //   child:
            //     appBar: AppBar(
            //   toolbarHeight: 60,
            //   backgroundColor: Colors.white,
            //   elevation: 0,
            //   // iconTheme: IconThemeData(color: orange),
            //   leading: Builder(
            //     builder: (context) => IconButton(
            //       onPressed: () => Scaffold.of(context).openDrawer(),
            //       icon: Image.asset(
            //         "assets/images/NewRMSMenu.png",
            //         height: 25,
            //         width: 44,
            //         color: Color(0XFF505050),
            //       ),
            //     ),
            //   ),
            //   title: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: const [
            //       Image(
            //         height: 30,
            //         image: AssetImage('assets/images/HRMS.png'),
            //       ),
            //       Icon(Icons.notifications_active_outlined,
            //           color: Color(0XFF909090)),
            //     ],
            //   ),
            // ),

            drawer: GestureDetector(
              onTap: () {
                // createlog("Menu tapped","true");
              },
              child: Drawer(
                child: Menu(),
              ),
            ),
            
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: _currentIndex == 0 ? Colors.green : Colors.grey,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.bar_chart_sharp,
                    color: _currentIndex == 1 ? Colors.green : Colors.grey,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.calendar_month_outlined,
                    color: _currentIndex == 2 ? Colors.green : Colors.grey,
                  ),
                  label: 'Settings',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: _currentIndex == 3 ? Colors.green : Colors.grey,
                  ),
                  label: '',
                ),
              ],
            ),
            // bottomNavigationBar: Container(
            //   height: 79,
            //   decoration: const BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.only(
            //       topLeft: Radius.circular(35),
            //       topRight: Radius.circular(35),
            //     ),
            //     // boxShadow: CustomTheme.cardShadow,
            //   ),
            //   child: const TabBar(
            //       padding: EdgeInsets.symmetric(vertical: 10),
            //       indicatorColor: Colors.transparent,
            //       tabs: [
            //         Tab(
            //           icon: Icon(Icons.home),
            //         ),
            //         Tab(
            //           icon: Icon(Icons.bar_chart_sharp),
            //         ),
            //         Tab(
            //           icon: Icon(Icons.calendar_month_outlined),
            //         ),
            //         Tab(
            //           icon: Icon(Icons.person),
            //         ),
            //       ]),
            // ),
            body: _getTabBarView(),
            // body: TabBarView(children: [
            //   DashBoard(),
            //   ReportScreen(),
            //   ChatScreen(),
            //   ProfileScreen(),
            // ]),
          ),
        ),
      ],
    );
  }
}
