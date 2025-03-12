import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_azman/widgets/hover_underline_button.dart';
import 'package:flutter_web_portfolio_azman/widgets/site_logo.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';
import '../pages/styles/styles.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, this.onLogoTap, required this.onNavItemTap});

  final VoidCallback? onLogoTap;
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      decoration: kHeaderDecoration,
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
