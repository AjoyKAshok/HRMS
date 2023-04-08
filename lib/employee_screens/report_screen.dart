import 'package:flutter/material.dart';

class ReportScreen extends StatefulWidget {
  ReportScreen({Key? key}) : super(key: key);

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
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
                  Padding(
                    padding: const EdgeInsets.only(top: 26),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Performance',
                            style: TextStyle(
                              color: Color(0XFF909090),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 13.0),
                            child: Text('View All'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 23, right: 15),
                    child: Container(
                      height: 136,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 116,
                            width: 152,
                            decoration: BoxDecoration(
                              color: Color(0XFFFFFFFF),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                    top: 14,
                                  ),
                                  child: Text(
                                    'Attendence',
                                    style: TextStyle(
                                      color: Color(0XFF909090),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15.0, left: 25, right: 25),
                                  child: SizedBox(
                                    height: 60,
                                    width: 60,
                                    child: Stack(
                                      fit: StackFit.expand,
                                      children: const [
                                        CircularProgressIndicator(
                                          backgroundColor: Color(0XFFEAECF0),
                                          value: 0.75,
                                          color: Color(0XFF3AEA95),
                                          strokeWidth: 4,
                                        ),
                                        Center(
                                          child: Text('75'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // child: Container(
                                  //   width: 50,
                                  //   height: 50,
                                  //   decoration: const BoxDecoration(
                                  //     color: Color(0XFF2F6AEC),
                                  //     shape: BoxShape.circle,
                                  //   ),
                                  // ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 114,
                            width: 152,
                            decoration: BoxDecoration(
                              color: const Color(0XFFFFFFFF),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                    top: 14,
                                  ),
                                  child: Text(
                                    'Late Attendence',
                                    style: TextStyle(
                                      color: Color(0XFF909090),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 15.0,
                                    left: 25,
                                    right: 25,
                                  ),
                                  child: SizedBox(
                                    height: 60,
                                    width: 60,
                                    child: Stack(
                                      fit: StackFit.expand,
                                      children: const [
                                        CircularProgressIndicator(
                                          value: 0.40,
                                          color: Color(0XFFF4B947),
                                          backgroundColor: Color(0XFFEAECF0),
                                          strokeWidth: 4,
                                        ),
                                        Center(
                                          child: Text('40'),
                                        )
                                      ],
                                    ),
                                  ),
                                  // child: Container(
                                  //   width: 50,
                                  //   height: 50,
                                  //   decoration: const BoxDecoration(
                                  //     color: Color(0XFFFF5C39),
                                  //     shape: BoxShape.circle,
                                  //   ),
                                  // ),
                                ),
                                // Text('40%'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
