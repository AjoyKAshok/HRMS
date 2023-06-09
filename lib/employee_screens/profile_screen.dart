import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: false,
      //   toolbarHeight: 50,
      //   backgroundColor: Colors.white,
      //   leading: IconButton(
      //     onPressed: () {
      //       // Navigator.pushReplacement(
      //       //       context,
      //       //       MaterialPageRoute(
      //       //           builder: (BuildContext context) => ProfileScreen()));
      //       Navigator.of(context).pop();
      //     },
      //     icon: const Icon(Icons.arrow_back),
      //     color: const Color(0XFF909090),
      //   ),
      //   title: const Text(
      //     'My Profile',
      //     style: TextStyle(
      //       color: Color(0XFF909090),
      //     ),
      //     textAlign: TextAlign.left,
      //   ),
      // ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 25,
                top: 125,
                right: 25,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                            color: Color(0XFFE7E7E7),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.account_circle_outlined,
                            color: Color(0XFFE84201),
                            size: 51,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),

                    // ),
                    const Center(
                      child: Text(
                          // 'Emp7325',
                          'Alexander John'),
                    ),
                    const Center(
                      child: Text(
                        'Emp7325',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 14.0,
                        top: 10,
                      ),
                      child: Text(
                        'Personal Info',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color(0XFFE7E7E7),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        makeProfileInfoContainer(
                            'Full Name', ': Alexander John'),
                        // const SizedBox(
                        //   height: 18,
                        // ),
                        const Divider(
                          thickness: 1,
                          color: Colors.blueGrey,
                        ),
                        makeProfileInfoContainer(
                            'Email', ': test@companyname.com'),

                        // const SizedBox(
                        //   height: 18,
                        // ),
                        const Divider(
                          thickness: 1,
                          color: Colors.blueGrey,
                        ),
                        makeProfileInfoContainer(
                            'Joining Date', ': 04/05/2019'),
                        //  const SizedBox(
                        //   height: 18,
                        // ),
                        const Divider(
                          thickness: 1,
                          color: Colors.blueGrey,
                        ),
                        makeProfileInfoContainer('Department', ': IT'),
                        //  const SizedBox(
                        //   height: 18,
                        // ),
                        const Divider(
                          thickness: 1,
                          color: Colors.blueGrey,
                        ),
                        makeProfileInfoContainer(
                            'Nationality', ': India'),
                        //  const SizedBox(
                        //   height: 18,
                        // ),
                        const Divider(
                          thickness: 1,
                          color: Colors.blueGrey,
                        ),
                        makeProfileInfoContainer(
                            'Visa Company', ': Company Name'),
                        //  const SizedBox(
                        //   height: 18,
                        // ),
                        const Divider(
                          thickness: 1,
                          color: Colors.blueGrey,
                        ),
                        makeProfileInfoContainer(
                            'Visa Expiry Date', ': 24/05/2025'),
                        //  const SizedBox(
                        //   height: 18,
                        // ),
                        const Divider(
                          thickness: 1,
                          color: Colors.blueGrey,
                        ),
                        makeProfileInfoContainer(
                            'Passport Expiry', ': 24/05/2025'),
                        const Divider(
                          thickness: 1,
                          color: Colors.blueGrey,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 14.0,
                            top: 10,
                          ),
                          child: Text(
                            'Update Info',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Divider(
                          thickness: 1,
                          color: Color(0XFFE7E7E7),
                        ),
                        makeProfileInfoContainer(
                            'Mobile Number', ': 9090909090'),
                        // makeEditableProfileInfoContainer(
                        //     'Change Password', ': ***********'),
                        SizedBox(height: 29),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container makeProfileInfoContainer(
    String title,
    String titleInfo,
  ) {
    return Container(
      height: 51,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
         
          Container(
            width: 150,
            child: Padding(
              padding: EdgeInsets.only(left: 14, top: 18, bottom: 12),
              child: Text(title),
            ),
          ),
          Container(
            width: 159,
            child: Padding(
              padding: EdgeInsets.only(left: 14, top: 18, bottom: 12),
              child: Text(titleInfo),
            ),
          ),
        ],
      ),
    );
  }

//   Container makeEditableProfileInfoContainer(
//     String title,
//     String titleInfo,
//   ) {
//     return Container(
//       height: 51,
//       width: MediaQuery.of(context).size.width,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(5),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               Container(
//                 width: 150,
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 14, top: 18, bottom: 12),
//                   child: Text(title),
//                 ),
//               ),
//               Container(
//                 width: 159,
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 14, top: 18, bottom: 12),
//                   child: Text(titleInfo),
//                 ),
//               ),
//             ],
//           ),
//           GestureDetector(
//             onTap: () {
//               showModalBottomSheet(
//                 isScrollControlled: true,
//                 shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.vertical(
//                     top: Radius.circular(20),
//                   ),
//                 ),
//                 context: context,
//                 builder: (context) => BottomModalSheet(),
//               );
//             },
//             child: Padding(
//               padding: const EdgeInsets.only(right: 15.0),
//               child: Icon(
//                 Icons.edit_outlined,
//                 size: 17,
//                 color: Color(0XFFE84201),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class BottomModalSheet extends StatefulWidget {
//   @override
//   State<BottomModalSheet> createState() => _BottomModalSheetState();
// }

// class _BottomModalSheetState extends State<BottomModalSheet> {
//   TextEditingController currentPasswordController = TextEditingController();
//   TextEditingController newPasswordController = TextEditingController();
//   TextEditingController confirmPasswordController = TextEditingController();
//   String currentPassword = '';
//   String newPassword = '';
//   String confirmPassword = '';

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     currentPasswordController.clear();
//     newPasswordController.clear();
//     confirmPasswordController.clear();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height * .48,
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(20),
//           topRight: Radius.circular(20),
//         ),
//       ),
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Padding(
//                   padding: EdgeInsets.only(
//                     left: 19,
//                     top: 18,
//                   ),
//                   child: Text(
//                     'Change Password',
//                     style: TextStyle(
//                       color: Color(0XFF505050),
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(
//                     right: 10,
//                     top: 20,
//                   ),
//                   child: GestureDetector(
//                       onTap: () {
//                         print('Close Button Tapped');
//                         Navigator.of(context).pop();
//                       },
//                       child: const Icon(
//                         Icons.close,
//                         size: 16,
//                         color: Color(0XFF505050),
//                       )),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             const Divider(
//               thickness: 1,
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Padding(
//               padding: EdgeInsets.only(
//                 left: 15,
//                 right: 15,
//                 top: 20,
//               ),
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: 50,
//                 child: TextFormField(
//                   controller: currentPasswordController,
//                   decoration: InputDecoration(
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                       borderSide: BorderSide(
//                         color: Colors.orange,
//                       ),
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                       borderSide: BorderSide(
//                         color: Colors.grey,
//                       ),
//                     ),
//                     labelText: 'Current Password',
//                     focusColor: Colors.grey,
//                     fillColor: Colors.white,
//                     filled: true,
//                     prefixIcon: Icon(
//                       Icons.lock,
//                       color: Color(0XFF909090),
//                     ),
//                   ),
//                   onChanged: (text) {
//                     setState(() {
//                       currentPassword = text;
//                     });
//                   },
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(
//                 left: 15,
//                 right: 15,
//                 top: 20,
//               ),
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: 50,
//                 child: TextFormField(
//                   controller: newPasswordController,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                       borderSide: BorderSide(
//                         color: Colors.orange,
//                       ),
//                     ),
//                     labelText: 'New Password',
//                     focusColor: Colors.grey,
//                     fillColor: Colors.white,
//                     filled: true,
//                     prefixIcon: Icon(
//                       Icons.lock,
//                       color: Color(0XFF909090),
//                     ),
//                   ),
//                   onChanged: (text) {
//                     setState(() {
//                       newPassword = text;
//                     });
//                   },
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(
//                 left: 15,
//                 right: 15,
//                 top: 20,
//               ),
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: 50,
//                 child: TextFormField(
//                   controller: confirmPasswordController,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                       borderSide: BorderSide(
//                         color: Colors.orange,
//                       ),
//                     ),
//                     labelText: 'Confirm Password',
//                     focusColor: Colors.orange,
//                     fillColor: Colors.white,
//                     filled: true,
//                     prefixIcon: Icon(
//                       Icons.lock,
//                       color: Color(0XFF909090),
//                     ),
//                   ),
//                   onChanged: (text) {
//                     setState(() {
//                       confirmPassword = text;
//                     });
//                   },
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(
//                 left: 20,
//                 right: 20,
//                 top: 30,
//               ),
//               child: GestureDetector(
//                 onTap: () {},
//                 child: Container(
//                   height: 55,
//                   width: MediaQuery.of(context).size.width,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8),
//                     gradient: LinearGradient(
//                         begin: Alignment.topLeft,
//                         end: Alignment.centerRight,
//                         colors: [Color(0xFFF88200), Color(0xFFE43700)]),
//                   ),
//                   child: const Center(child: Text('OK')),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
}
