import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_azman/constants/colors.dart';
import 'package:flutter_web_portfolio_azman/widgets/drawer_mobile.dart';
import '../constants/nav_items.dart';
import '../constants/size.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth ? null : DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              if (constraints.maxWidth >= kMinDesktopWidth)
                HeaderDesktop(onLogoTap: () {}, onMenuTap: () {})
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),

              // Skills
              Container(
                height: 500,
                width: double.infinity,
                color: Color.fromRGBO(77, 85, 204, 1),
              ),

              // Project
              Container(
                height: 500,
                width: double.infinity,
                color: Color.fromRGBO(122, 115, 209, 1),
              ),

              // Contact
              Container(
                height: 500,
                width: double.infinity,
                color: Color.fromRGBO(181, 168, 213, 1),
              ),

              // Footer
              Container(
                height: 500,
                width: double.infinity,
                color: Colors.purpleAccent,
              ),
            ],
          ),
        );
      },
    );
  }
}
