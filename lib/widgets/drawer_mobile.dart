import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      shape: RoundedRectangleBorder(),
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close),
              ),
            ),
          ),
          ...List.generate(navItems.length, (i) {
            return ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              titleTextStyle: TextStyle(
                color: CustomColor.whitePrimary,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              leading: Icon(navItems[i].navIcon),
              title: Text(navItems[i].navTitle),
            );
          }),
        ],
      ),
    );
  }
}
