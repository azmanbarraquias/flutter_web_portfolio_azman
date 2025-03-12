import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_azman/widgets/project_card.dart';
import '../constants/colors.dart';
import '../utils/project_utils.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    // final screenHeight = screenSize.height;

    return Container(
      width: screenWidth,
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          // Work Projects title
          Text(
            'Work projects ',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),

          SizedBox(height: 50),
          // Work projects cards
          Wrap(
            spacing: 25,
            runSpacing: 25,
            children: [
              ...List.generate(workProject.length, (i) {
                return ProjectCard(projectUtils: workProject[i]);
              }),
            ],
          ),
          SizedBox(height: 80),

          // Work Projects title
          Text(
            'Hobby projects ',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),

          SizedBox(height: 50),
          // Work projects cards
          Wrap(
            spacing: 25,
            runSpacing: 25,
            children: [
              ...List.generate(hobbyProject.length, (i) {
                return ProjectCard(projectUtils: hobbyProject[i]);
              }),
            ],
          ),
        ],
      ),
    );
  }
}
