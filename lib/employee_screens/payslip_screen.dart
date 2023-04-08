import 'package:flutter/material.dart';

import 'dashboard_screen.dart';

class PaySlipScreen extends StatefulWidget {
  PaySlipScreen({Key? key}) : super(key: key);

  @override
  State<PaySlipScreen> createState() => _PaySlipScreenState();
}

class _PaySlipScreenState extends State<PaySlipScreen> {
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
          'Pay Slip',
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
                                Text('14/01/2023'),
                                Text('INR 76,000.00'),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, bottom: 28, right: 10, left: 39),
                              child: Container(
                                height: 26,
                                width: 96,
                                decoration: BoxDecoration(
                                  color: const Color(0XFFFFFFFF),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Row(
                                  children: const [
                                    Center(
                                      child: Text(
                                        'Download',
                                        style: TextStyle(
                                          color: Color(0XFF0A9250),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Icon(Icons.download_sharp, color: Color(0XFF0A9250), size: 15,),
                                  ],
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
                                Text('14/01/2023'),
                                Text('INR 76,000.00'),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, bottom: 28, right: 10, left: 39),
                              child: Container(
                                height: 26,
                                width: 96,
                                decoration: BoxDecoration(
                                  color: const Color(0XFFFFFFFF),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Row(
                                  children: const [
                                    Center(
                                      child: Text(
                                        'Download',
                                        style: TextStyle(
                                          color: Color(0XFF0A9250),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Icon(Icons.download_sharp, color: Color(0XFF0A9250), size: 15,),
                                  ],
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
                                Text('14/01/2023'),
                                Text('INR 76,000.00'),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, bottom: 28, right: 10, left: 39),
                              child: Container(
                                height: 26,
                                width: 96,
                                decoration: BoxDecoration(
                                  color: const Color(0XFFFFFFFF),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Row(
                                  children: const [
                                    Center(
                                      child: Text(
                                        'Download',
                                        style: TextStyle(
                                          color: Color(0XFF0A9250),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Icon(Icons.download_sharp, color: Color(0XFF0A9250), size: 15,),
                                  ],
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
                                Text('14/01/2023'),
                                Text('INR 76,000.00'),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, bottom: 28, right: 10, left: 39),
                              child: Container(
                                height: 26,
                                width: 96,
                                decoration: BoxDecoration(
                                  color: const Color(0XFFFFFFFF),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Row(
                                  children: const [
                                    Center(
                                      child: Text(
                                        'Download',
                                        style: TextStyle(
                                          color: Color(0XFF0A9250),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Icon(Icons.download_sharp, color: Color(0XFF0A9250), size: 15,),
                                  ],
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
                                Text('14/01/2023'),
                                Text('INR 76,000.00'),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, bottom: 28, right: 10, left: 39),
                              child: Container(
                                height: 26,
                                width: 96,
                                decoration: BoxDecoration(
                                  color: const Color(0XFFFFFFFF),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Row(
                                  children: const [
                                    Center(
                                      child: Text(
                                        'Download',
                                        style: TextStyle(
                                          color: Color(0XFF0A9250),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Icon(Icons.download_sharp, color: Color(0XFF0A9250), size: 15,),
                                  ],
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
                                Text('14/01/2023'),
                                Text('INR 76,000.00'),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, bottom: 28, right: 10, left: 39),
                              child: Container(
                                height: 26,
                                width: 96,
                                decoration: BoxDecoration(
                                  color: const Color(0XFFFFFFFF),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Row(
                                  children: const [
                                    Center(
                                      child: Text(
                                        'Download',
                                        style: TextStyle(
                                          color: Color(0XFF0A9250),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Icon(Icons.download_sharp, color: Color(0XFF0A9250), size: 15,),
                                  ],
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
                                Text('14/01/2023'),
                                Text('INR 76,000.00'),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, bottom: 28, right: 10, left: 39),
                              child: Container(
                                height: 26,
                                width: 96,
                                decoration: BoxDecoration(
                                  color: const Color(0XFFFFFFFF),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Row(
                                  children: const [
                                    Center(
                                      child: Text(
                                        'Download',
                                        style: TextStyle(
                                          color: Color(0XFF0A9250),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Icon(Icons.download_sharp, color: Color(0XFF0A9250), size: 15,),
                                  ],
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