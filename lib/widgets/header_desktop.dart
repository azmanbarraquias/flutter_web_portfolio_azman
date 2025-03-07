import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_azman/widgets/site_logo.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, this.onLogoTap, required this.onNavItemTap});

  final VoidCallback? onLogoTap;
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: CustomColor.bgLight1,
        gradient: LinearGradient(
          colors: [CustomColor.bgLight1, CustomColor.bgLight1],
        ),
      ),
      child: Row(
        children: [
          SiteLogo(onTap: onLogoTap),
          Spacer(),
          ...List.generate(navItems.length, (i) {
            return Padding(
              padding: EdgeInsets.only(right: 0),
              child: TextButton(
                onPressed: () => onNavItemTap(i),
                child: Text(
                  navItems[i].navTitle,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: CustomColor.whitePrimary,
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
