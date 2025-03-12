import 'package:flutter/material.dart';
import 'dart:js_interop';

import '../constants/colors.dart';
import '../utils/project_utils.dart';

@JS('window.open') // Bind to JavaScript's window.open() function
external void openUrl(String url);

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.projectUtils});

  final ProjectUtils projectUtils;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            height: 300,
            width: 500,
            fit: BoxFit.cover,
            projectUtils.image,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              projectUtils.title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: Text(
                projectUtils.subtitle,
                style: TextStyle(
                  fontSize: 15,
                  color: CustomColor.whiteSecondary,
                ),
              ),
            ),
          ),
          Container(
            color: CustomColor.bgLight1,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                Text(
                  'Available on: ',
                  style: TextStyle(
                    color: CustomColor.yellowPrimary,
                    fontSize: 12,
                  ),
                ),
                Spacer(),
                // if(projectUtils.iosLink != null)
                InkWell(
                  onTap: () {
                    openUrl("https://www.google.com/");
                  },
                  child: Icon(
                    Icons.apple,
                    size: 20,
                    color: CustomColor.whitePrimary,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.android,
                    size: 20,
                    color: CustomColor.whiteSecondary,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.language_outlined,
                    size: 20,
                    color: CustomColor.whiteSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
