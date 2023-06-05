import 'package:flutter/material.dart';
import 'package:hrms/employee_screens/dashboard_screen.dart';

class LeavePolicyScreen extends StatefulWidget {
  const LeavePolicyScreen({super.key});

  @override
  State<LeavePolicyScreen> createState() => _LeavePolicyScreenState();
}

class _LeavePolicyScreenState extends State<LeavePolicyScreen> {
   bool isExpanded1 = false;
  bool isExpanded2 = false;
  bool isExpanded3 = false;
  bool isExpanded4 = false;
  bool isExpanded5 = false;
  bool isExpanded6 = false;
  bool isExpanded7 = false;
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
          'Leave Policy',
          style: TextStyle(
            color: Color(0XFF909090),
          ),
        ),
      ),
       body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 10,),  
        child: ListView(
        children: [
          ExpansionPanelList(
            elevation: 1,
            expandedHeaderPadding: EdgeInsets.all(0),
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                switch (index) {
                  case 0:
                    isExpanded1 = !isExpanded1;
                    break;
                  case 1:
                    isExpanded2 = !isExpanded2;
                    break;
                  case 2:
                    isExpanded3 = !isExpanded3;
                    break;
                  case 3:
                    isExpanded4 = !isExpanded4;
                    break;
                  case 4:
                    isExpanded5 = !isExpanded5;
                    break;
                  case 5:
                    isExpanded6 = !isExpanded6;
                    break;
                  case 6:
                    isExpanded7 = !isExpanded7;
                    break;
                }
              });
            },
            children: [
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text('Types of Holidays & Leaves'),
                  );
                },
                body: ListTile(
                  title: Text('This section gives a description about the types of Holidays and Leaves that are available for the employees of the firm.'),
                ),
                isExpanded: isExpanded1,
              ),
              
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text('General Rules Governing Leaves'),
                  );
                },
                body: ListTile(
                  title: Text('Content for Widget 2'),
                ),
                isExpanded: isExpanded2,
              ),
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text('Exception Request'),
                  );
                },
                body: ListTile(
                  title: Text('Content for Widget 3'),
                ),
                isExpanded: isExpanded3,
              ),
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text('Process Description'),
                  );
                },
                body: ListTile(
                  title: Text('Content for Widget 4'),
                ),
                isExpanded: isExpanded4,
              ),
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text('Guidelines Related to Leave'),
                  );
                },
                body: ListTile(
                  title: Text('Content for Widget 5'),
                ),
                isExpanded: isExpanded5,
              ),
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text('Loss of Pay'),
                  );
                },
                body: ListTile(
                  title: Text('Content for Widget 6'),
                ),
                isExpanded: isExpanded6,
              ),
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text('Procedure for Applying Leaves'),
                  );
                },
                body: ListTile(
                  title: Text('Content for Widget 7'),
                ),
                isExpanded: isExpanded7,
              ),
            ],
          ),
          SizedBox(height: 144),
         
          Padding(
            padding: const EdgeInsets.only(bottom: 18),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.only(
                                        right: 0.0, left: 0, top: 30, bottom: 25),
                                    padding: const EdgeInsets.all(15.0),
                                    decoration: BoxDecoration(
                                      // color: Color(0XFF867070),
                                      gradient: const LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color(0xFF00AD40),
                                            Color(0xFF228300)
                                          ]),
                                      borderRadius: BorderRadius.circular(10.00),
                                    ),
                                    child: const Text(
                                      'Download Leave Poilicy',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
            ),
          ),
        ],
      ),
       
       ),
    );
  }
}