import 'package:flutter/material.dart';
import 'package:hrms/employee_screens/mail_history_screen.dart';

import 'dashboard_screen.dart';

class ResignationScreen extends StatefulWidget {
  ResignationScreen({Key? key}) : super(key: key);

  @override
  State<ResignationScreen> createState() => _ResignationScreenState();
}

class _ResignationScreenState extends State<ResignationScreen> {
  String _text = '';
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
          'Resignation',
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
                  height: 195,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Alexander John',
                          style: TextStyle(
                            color: Color(0XFF505050),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 4.0),
                        child: Text(
                          'Flutter Developer',
                          style: TextStyle(
                            color: Color(0XFF0A9250),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 4.0),
                        child: Text(
                          'Id: TTF231546',
                          style: TextStyle(
                            color: Color(0XFF909090),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 17),
                child: Text(
                  'Resignation Letter',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0XFF505050),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 3),
                child: Text(
                  'Note: The following mail will be sent to your Reporting Manager on Submission!!',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF909090),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .42,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0XFFF6F6F6),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: Color(0XFFBEBEBE),
                  ),
                ),
                child: TextField(
                  // expands: true,
                  maxLines: 19,
                  onChanged: (text) {
                    setState(() {
                      _text = text;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter some text',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      print(_text);
                      //       Navigator.pushReplacement(
                      // context,
                      // MaterialPageRoute(
                      //     builder: (BuildContext context) => MailHistory(mailContent: _text,)));
                      showModalBottomSheet(
                        isDismissible: false,
                        context: context,
                        builder: (context) => BottomModalSheet(
                          mailContent: _text,
                        ),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * .40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0XFF0A9250),
                      ),
                      child: const Center(
                        child: Text(
                          'Send',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * .40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .33,
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
              children: const [
                Padding(
                  padding: EdgeInsets.only(
                    left: 19,
                    top: 18,
                  ),
                  child: Text(
                    'Resignation Mail Sent',
                  ),
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
            Column(
              children: [
                const Center(
                  child: Text(
                    'Mail Sent Successfully',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    child: const Icon(
                      Icons.done_sharp,
                      size: 45,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => MailHistory(
                                    mailContent: widget.mailContent,
                                  )));
                    },
                    child: Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color(0XFF909090),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          'OK',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Padding(padding: EdgeInsets.only(left: 15, right: 15, bottom: 15,),

            // ),
            // Padding(
            //   padding: const EdgeInsets.only(
            //     left: 15.0,
            //     right: 15,
            //     bottom: 15,
            //   ),
            //   child: Container(
            //     height: MediaQuery.of(context).size.height * .45,
            //     decoration: BoxDecoration(
            //       color: Colors.blueGrey,
            //       borderRadius: BorderRadius.circular(12),
            //     ),
            //     child: Column(
            //       children: [
            //         const Padding(
            //           padding: EdgeInsets.only(top: 45, left: 10, right: 10,),
            //           child: Text(
            //             'Resignation Mail Sent Successfully',
            //             style: TextStyle(
            //               color: Colors.white,
            //               fontSize: 23,
            //               fontWeight: FontWeight.w500,
            //             ),
            //           ),
            //         ),
            //         // Padding(
            //         //   padding: const EdgeInsets.all(8.0),
            //         //   child: Text(widget.mailContent, style: TextStyle(color: Colors.white,),),
            //         // ),
            //         Container(
            //           height: 50,
            //           width: 50,
            //           decoration: BoxDecoration(
            //             shape: BoxShape.circle,
            //             color: Colors.white,
            //           ),
            //           child: Icon(
            //             Icons.done_sharp,
            //             size: 45,
            //             color: Colors.green,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
