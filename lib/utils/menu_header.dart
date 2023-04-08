import 'package:flutter/material.dart';

class MenuHeader extends StatefulWidget {
  MenuHeader({Key? key}) : super(key: key);

  @override
  State<MenuHeader> createState() => _MenuHeaderState();
}

class _MenuHeaderState extends State<MenuHeader> {
 @override
  Widget build(BuildContext context) {
    return Container(
      //  color: Colors.green[700],
      decoration: const BoxDecoration(
        gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFF5F8D4E),
                                    Color(0xFF285430)
                                  ]),
      ),
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              border: Border.all(
                width: 3,
                color: Colors.white,
              ),
              shape: BoxShape.circle,
              image: const DecorationImage(
                image: AssetImage('assets/images/photograph.png'),
              ),
            ),
          ),
          const Text(
            "Menu",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "ATR-0729",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
