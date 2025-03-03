import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_azman/widgets/site_logo.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, this.onLogoTap, this.onMenuTap});

  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        gradient: LinearGradient(
          colors: [Colors.transparent, CustomColor.bgLight1],
        ),
      ),
      child: Row(
        children: [
          SiteLogo(onTap: onLogoTap,),
          Spacer(),
          ...List.generate(navItems.length, (i) {
            return Padding(
              padding: EdgeInsets.only(right: 10),
              child: TextButton(
                onPressed: onMenuTap,
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
