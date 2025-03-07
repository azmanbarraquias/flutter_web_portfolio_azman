import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_azman/constants/colors.dart';
import 'package:flutter_web_portfolio_azman/widgets/drawer_mobile.dart';
import '../constants/size.dart';
import '../widgets/contact_section.dart';
import '../widgets/footer_section.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';
import '../widgets/projects_section.dart';
import '../widgets/skills_desktop.dart';
import '../widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (i) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    // final screenHeight = screenSize.height;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer:
              constraints.maxWidth >= kMinDesktopWidth
                  ? null
                  : DrawerMobile(
                    onNavItemTap: (i) {
                      scaffoldKey.currentState?.closeEndDrawer();
                      scrollToSection(i);
                    },
                  ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(key: navbarKeys[0]),
                if (constraints.maxWidth >= kMinDesktopWidth)
                  HeaderDesktop(
                    onLogoTap: () {},
                    onNavItemTap: (i) => scrollToSection(i),
                  )
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
                SizedBox(key: navbarKeys[1]),
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

                ProjectsSection(key: navbarKeys[2]),

                // Hobby
                SizedBox(height: 20),
                // Contact
                ContactSection(key: navbarKeys[3]),

                // Footer
                FooterSection(),
              ],
            ),
          ),
        );
      },
    );
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) return;

    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
