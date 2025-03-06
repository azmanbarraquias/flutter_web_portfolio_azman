import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_azman/constants/colors.dart';
import 'package:flutter_web_portfolio_azman/widgets/site_logo.dart';

import '../pages/styles/styles.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});

  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(onTap: onLogoTap),
          Spacer(),
          IconButton(onPressed: onMenuTap, icon: Icon(Icons.menu, color: CustomColor.whitePrimary,)),
          SizedBox(width: 8),
        ],
      ),
    );
  }
}
