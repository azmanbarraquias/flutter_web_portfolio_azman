import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_portfolio_azman/constants/colors.dart';
import 'package:flutter_web_portfolio_azman/widgets/drawer_mobile.dart';
import 'package:flutter_web_portfolio_azman/widgets/main_desktop.dart';
import 'package:flutter_web_portfolio_azman/widgets/main_mobile.dart';
import '../constants/size.dart';
import '../constants/skill_items.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/skills_desktop.dart';
import '../widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer:
              constraints.maxWidth >= kMinDesktopWidth ? null : DrawerMobile(),
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
              //
              // if (constraints.maxWidth >= kMinDesktopWidth)
              //   MainDesktop()
              // else
              //   MainMobile(),
              //
              // // Skills
              // Container(
              //   width: screenWidth,
              //   color: CustomColor.bgLight1,
              //   padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
              //   child: Column(
              //     children: [
              //       Text(
              //         'What I can do',
              //         style: TextStyle(
              //           fontSize: 24,
              //           fontWeight: FontWeight.bold,
              //           color: CustomColor.whitePrimary,
              //         ),
              //       ),
              //       SizedBox(height: 10),
              //       // Platforms and Programming
              //       if (constraints.maxWidth >= kMedDesktopWidth)
              //         SkillsDesktop()
              //       else
              //         SkillsMobile(),
              //     ],
              //   ),
              // ),

              // Project
              Container(
                width: screenWidth,
                padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                child: Column(
                  children: [
                    // Work Projects title
                    Text(
                      'Work projects title',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),

                    // Work projects cards
                    Container(
                      height: 280,
                      width: 250,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: CustomColor.bgLight2,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            height: 140,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            'assets/images/Gemini_Generated_Image_h36tdph36tdph36t.jpg',
                          ),
                          Text(
                            'Title',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: CustomColor.whitePrimary,
                            ),
                          ),
                          Text(
                            'Some dummy subtitle about the project',
                            style: TextStyle(
                              fontSize: 10,
                              color: CustomColor.whiteSecondary,
                            ),

                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
