
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hrms/employee_screens/leave_history_screen.dart';
import 'package:hrms/employee_screens/leave_request_screen.dart';
import 'package:intl/intl.dart';
import 'dashboard_screen.dart';
import 'mail_history_screen.dart';

class ApplyLeaveScreen extends StatefulWidget {
  ApplyLeaveScreen({Key? key}) : super(key: key);

  @override
  State<ApplyLeaveScreen> createState() => _ApplyLeaveScreenState();
}

class _ApplyLeaveScreenState extends State<ApplyLeaveScreen> {
  String _text = '';
  bool isSickLeave = false;
  DateTime _selectedDate = DateTime.now();
  final dateFormatter = DateFormat('dd/MM/yyyy');
  String dropdownValue = 'Earned Leave';
  TextEditingController _controllerDropDown = TextEditingController();
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2101));
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _controller1.text = '${picked.day}/${picked.month}/${picked.year}';
      });
    }
  }

  Future<void> _selectSecondDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2101));
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _controller2.text = '${picked.day}/${picked.month}/${picked.year}';
      });
    }
  }

  void _showDropdown() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select an option'),
          content: DropdownButton<String>(
            value: dropdownValue,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
                _controllerDropDown.text = dropdownValue;
              });
            },
            items: <String>[
              'Earned Leave',
              'Casual Leave',
              'Sick Leave',
              'Loss of Pay',
              'Compensatory Leave',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        );
      },
    );
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
          'Apply Leave',
          style: TextStyle(
            color: Color(0XFF909090),
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 26),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Leave Type'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 23, right: 21),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: GestureDetector(
                            onTap: () {
                              //  Navigator.pushReplacement(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (BuildContext context) =>
                              //           AttendanceScreen()));
                            },
                            child: Container(
                              height: 100,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Color(0XFFFFFFFF),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                      top: 17,
                                    ),
                                    child: Text(
                                      'Earned Leave',
                                      style: TextStyle(
                                        color: Color(0XFF505050),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          left: 41,
                                        ),
                                        child: Text(
                                          '12',
                                          style: TextStyle(
                                              color: Color(0XFF2F6AEC),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 16,
                                        ),
                                        child: Container(
                                          height: 12,
                                          width: 51,
                                          decoration: BoxDecoration(
                                            color: const Color(0XFFE9EFFC),
                                            borderRadius:
                                                BorderRadius.circular(100),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'Available',
                                              style: TextStyle(
                                                color: Color(0XFF2F6AEC),
                                                fontSize: 8,
                                                fontWeight: FontWeight.w500,
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
                        ),
                        GestureDetector(
                          onTap: () {
                            //  Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (BuildContext context) =>
                            //           AttendanceScreen()));
                          },
                          child: Container(
                            height: 100,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Color(0XFFFFFFFF),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                    top: 17,
                                  ),
                                  child: Text(
                                    'Sick Leave',
                                    style: TextStyle(
                                      color: Color(0XFF505050),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        left: 49,
                                      ),
                                      child: Text(
                                        '9',
                                        style: TextStyle(
                                            color: Color(0XFFFF5C39),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 16,
                                      ),
                                      child: Container(
                                        height: 12,
                                        width: 51,
                                        decoration: BoxDecoration(
                                          color: const Color(0XFFFFEDE9),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Available',
                                            style: TextStyle(
                                              color: Color(0XFFFF5C39),
                                              fontSize: 8,
                                              fontWeight: FontWeight.w500,
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 23, right: 21),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: GestureDetector(
                            onTap: () {
                              //  Navigator.pushReplacement(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (BuildContext context) =>
                              //           AttendanceScreen()));
                            },
                            child: Container(
                              height: 100,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Color(0XFFFFFFFF),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                      top: 17,
                                    ),
                                    child: Text(
                                      'Casual Leave',
                                      style: TextStyle(
                                        color: Color(0XFF505050),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          left: 41,
                                        ),
                                        child: Text(
                                          '11',
                                          style: TextStyle(
                                              color: Color(0XFF28A205),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 16,
                                        ),
                                        child: Container(
                                          height: 12,
                                          width: 51,
                                          decoration: BoxDecoration(
                                            color: const Color(0XFFF0FFEC),
                                            borderRadius:
                                                BorderRadius.circular(100),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'Available',
                                              style: TextStyle(
                                                color: Color(0XFF28A205),
                                                fontSize: 8,
                                                fontWeight: FontWeight.w500,
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
                        ),
                        GestureDetector(
                          onTap: () {
                            //  Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (BuildContext context) =>
                            //           AttendanceScreen()));
                          },
                          child: Container(
                            height: 100,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Color(0XFFFFFFFF),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                    top: 17,
                                  ),
                                  child: Text(
                                    'Comp Off',
                                    style: TextStyle(
                                      color: Color(0XFF505050),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        left: 49,
                                      ),
                                      child: Text(
                                        '13',
                                        style: TextStyle(
                                            color: Color(0XFF00B8DC),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 16,
                                      ),
                                      child: Container(
                                        height: 12,
                                        width: 51,
                                        decoration: BoxDecoration(
                                          color: const Color(0XFFE7FBFF),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Manager Approval',
                                            style: TextStyle(
                                              color: Color(0XFF00B8DC),
                                              fontSize: 8,
                                              fontWeight: FontWeight.w500,
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
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          SizedBox(
                            width: 12,
                          ),
                          Text('From'),
                          SizedBox(
                            width: 163,
                          ),
                          Text('To'),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectDate(context);
                                    // _controller1 = _selectedDate as TextEditingController;
                                  });
                                },
                                child: AbsorbPointer(
                                  child: TextField(
                                    controller: _controller1,
                                    decoration: const InputDecoration(
                                      // labelText: 'From',
                                      prefixIcon: Icon(Icons.calendar_today),
                                    ),
                                    keyboardType: TextInputType.datetime,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () => _selectSecondDate(context),
                                child: AbsorbPointer(
                                  child: TextField(
                                    controller: _controller2,
                                    decoration: const InputDecoration(
                                      // labelText: 'To',
                                      prefixIcon: Icon(Icons.calendar_today),
                                    ),
                                    keyboardType: TextInputType.datetime,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Leave Type'),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          // color: Colors.blueGrey,
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: DropdownButton<String>(
                            isExpanded: true,
                            value: dropdownValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                                print(dropdownValue);
                                dropdownValue == 'Sick Leave'
                                    ? setState(() {
                                        isSickLeave = true;
                                      })
                                    : setState(() {
                                        isSickLeave = false;
                                      });
                              });
                            },
                            items: <String>[
                              'Earned Leave',
                              'Casual Leave',
                              'Sick Leave',
                              'Loss of Pay',
                              'Compensatory Leave',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    color: Color(0XFF505050),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  isSickLeave
                      ? Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 7, right: 20),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                child:
                                GestureDetector(
                    onTap: () {},
                    child: DottedBorder(
                          color: Colors.grey,
                          strokeWidth: 1,
                          child: Container(
                           
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Center(
                                  child: Text(
                                          'Upload Medical Certificate',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                ),
                                SizedBox(
                                  width: 75,
                                ),
                                Icon(Icons.chevron_right),
                              ],
                            ),
                          ),
                    ),
                  ),
                                //  Row(
                                //   children: const [
                                //     Text(
                                //       'Attach Medical Certificate',
                                //       style: TextStyle(
                                //         fontSize: 14,
                                //         fontWeight: FontWeight.w600,
                                //         color: Color(0XFF505050),
                                //       ),
                                //     ),
                                //     Icon(Icons.attach_file),
                                //   ],
                                // ),
                              ),
                            ),
                           Padding(
                              padding: EdgeInsets.only(top: 12, right: 20),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                   Image.asset("assets/images/pdf_upload.png"),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 8.0),
                                     child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Column(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                              // pickedFile == null
                              //     ? Text('No File Selected')
                                  // :
                                     GestureDetector(
                                        onTap: () {
                                          // openFile(pathOfFile);
                                        },
                                        child: const Text(
                                          // '$nameOfFile',
                                          'Medical Certificate',
                                          style: TextStyle(
                                            fontFamily: 'DM Sans',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                              // sh5,
                              // const Text(
                              //   // '$percentageUploaded%'
                              //   '63%'
                              //   ),
                          //   ],
                          // ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 279,
                                height: 8,
                                child:const LinearProgressIndicator(
                                  // value: progress,
                                  value: .63,
                                  color: Colors.grey,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                        Color(0XFF0A9250)),
                                ),
                              ),
                              // sw8,
                              SizedBox(
                                width: 8,
                              ),
                              GestureDetector(
                                onTap: () {
                                  // pickedFile == null ? null : changeFile();
                                },
                                child: const Icon(
                                  Icons.cancel_sharp,
                                  size: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                                   ),
                                ],),
                              ),
                           ), 
                        ],
                      )
                      : SizedBox(),
                  const Padding(
                    padding: EdgeInsets.only(top: 17),
                    child: Text(
                      'Reason',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF505050),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .21,
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
                      decoration: const InputDecoration(
                        hintText: 'Enter some text',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print(_text);

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
                  SizedBox(
                    height: 12,
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
                    'Leave Request Sent',
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
                    'Leave Request Sent Successfully',
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
                      // Navigator.pop(context);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  LeaveRequests()));
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
