import 'package:flutter/material.dart';

import 'menu_header.dart';

class Menu extends StatefulWidget {
  Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
 @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              MenuHeader(),
              DrawerTiles(),
            ],
          ),
        ),
      ),
    );
  }

  Widget DrawerTiles() {
    return Container(
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(children: [
           ListTile(
              leading: const Icon(Icons.add_moderator_outlined),
              title: const Text('Sales'),
              onTap: () {
              
              },
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
             ListTile(
              leading: const Icon(Icons.add_moderator_outlined),
              title: const Text('Category'),
              onTap: () {
              
              },
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
             ListTile(
              leading: const Icon(Icons.add_moderator_outlined),
              title: const Text('Customer List'),
              onTap: () {
              
              },
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
             ListTile(
              leading: const Icon(Icons.add_moderator_outlined),
              title: const Text('Collection'),
              onTap: () {
              
              },
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
        ]),
      ),
    );
  }
}
