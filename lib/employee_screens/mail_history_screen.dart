import 'package:flutter/material.dart';

import 'dashboard_screen.dart';

class MailHistory extends StatefulWidget {
  MailHistory({required this.mailContent});
  final String mailContent;
  @override
  State<MailHistory> createState() => _MailHistoryState();
}

class _MailHistoryState extends State<MailHistory> {
  @override
  void initState() {
    super.initState();
    String mailDetail = widget.mailContent;
  }

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
          'Mail History',
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
              makeMailHistoryCard('21 February 2023', 'Alexander',
                  'Resignation Mail', 'Accepted'),
              makeMailHistoryCard('21 February 2023', 'Alexander',
                  'Resignation Mail', 'Pending'),
              makeMailHistoryCard('21 February 2023', 'Alexander',
                  'Resignation Mail', 'Pending'),
              makeMailHistoryCard('21 February 2023', 'Alexander',
                  'Resignation Mail', 'Pending'),
              makeMailHistoryCard('21 February 2023', 'Alexander',
                  'Resignation Mail', 'Pending'),
              makeMailHistoryCard('21 February 2023', 'Alexander',
                  'Resignation Mail', 'Pending'),
            ],
          ),
        ),
      ),
    );
  }

  makeMailHistoryCard(
      String date, String empName, String subject, String status) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => BottomModalSheet(
            mailContent: widget.mailContent,
          ),
        );
      },
      child: Container(
        height: 180,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
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
                    child: Text(date),
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
                        padding: const EdgeInsets.only(top: 15, bottom: 15, left: 10),
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
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(empName),
                                ),
                                Text(subject),
                                // Text('Sick Leave Request'),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, bottom: 28, right: 10, left: 63),
                              child: Container(
                                height: 26,
                                width: 76,
                                decoration: BoxDecoration(
                                  color: const Color(0XFFDCFCE4),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Center(
                                  child: Text(
                                    status,
                                    style: const TextStyle(
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

class BottomModalSheet extends StatefulWidget {
  final String mailContent;
  BottomModalSheet({
    required this.mailContent,
  });
  @override
  State<BottomModalSheet> createState() => _BottomModalSheetState();
}

class _BottomModalSheetState extends State<BottomModalSheet> {
  @override
  void initState() {
    super.initState();
    String mailDetails = widget.mailContent;
    print(mailDetails);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .63,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 19,
                    top: 18,
                  ),
                  child: Text(
                    'Resignation Mail Sent',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 19,
                    top: 20,
                  ),
                  child: GestureDetector(
                      onTap: () {
                        print('Close Button Tapped');
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.close,
                        size: 12,
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 15,
            ),
            // Column(
            //   children: [
            //     Center(
            //       child: Text('Mail Sent Successfully', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500,),),
            //     ),
            //              Padding(
            //                padding: const EdgeInsets.only(top: 28.0),
            //                child: Container(
            //           height: 50,
            //           width: 50,
            //           decoration: BoxDecoration(
            //             shape: BoxShape.circle,
            //             color: Colors.green,
            //           ),
            //           child: Icon(
            //             Icons.done_sharp,
            //             size: 45,
            //             color: Colors.white,
            //           ),
            //         ),
            //              ),
            //   ],
            // ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15,
                bottom: 15,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * .45,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    // const Padding(
                    //   padding: EdgeInsets.only(
                    //     top: 45,
                    //     left: 10,
                    //     right: 10,
                    //   ),
                    //   child: Text(
                    //     'Resignation Mail Sent Successfully',
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 23,
                    //       fontWeight: FontWeight.w500,
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.mailContent,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 55,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.done_sharp,
                        size: 45,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
