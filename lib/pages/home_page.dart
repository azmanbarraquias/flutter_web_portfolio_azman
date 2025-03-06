import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_azman/constants/colors.dart';
import 'package:flutter_web_portfolio_azman/widgets/custom_text_field.dart';
import 'package:flutter_web_portfolio_azman/widgets/drawer_mobile.dart';
import '../constants/size.dart';
import '../utils/project_utils.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';
import '../widgets/project_card.dart';
import '../widgets/projects_section.dart' show ProjectsSection;
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

              if (constraints.maxWidth >= kMinDesktopWidth)
                MainDesktop()
              else
                MainMobile(),

              // Skills
              Container(
                width: screenWidth,
                color: CustomColor.bgLight1,
                padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                child: Column(
                  children: [
                    Text(
                      'What I can do',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    SizedBox(height: 10),
                    // Platforms and Programming
                    if (constraints.maxWidth >= kMedDesktopWidth)
                      SkillsDesktop()
                    else
                      SkillsMobile(),
                  ],
                ),
              ),

              // Work
              SizedBox(height: 20),

              ProjectsSection(),

              // Hobby

              // Contact
              Container(
                padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1,
                child: Column(
                  children: [
                    // title
                    Text(
                      "Get in touch",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    SizedBox(height: 50),
                    Row(
                      children: [
                        Flexible(
                          child: CustomTextField(
                            controller: TextEditingController(),
                            hintText: 'Your name',
                          ),
                        ),
                        SizedBox(width: 10,),
                        Flexible(
                          child: CustomTextField(
                            controller: TextEditingController(),
                            hintText: 'Your email',
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 10,),
                    CustomTextField(
                      controller: TextEditingController(),
                      hintText: 'Your message',
                      maxLines: 20,
                    ),
                  ],

                ),
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
