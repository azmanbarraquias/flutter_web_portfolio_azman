
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../utils/project_utils.dart';
import 'dart:js' as js;

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.projectUtils});

  final ProjectUtils projectUtils;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      width: 260,
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
            height: 140,
            width: 260,
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
          Padding(
            padding: EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              overflow: TextOverflow.ellipsis,
              projectUtils.subtitle,
              style: TextStyle(fontSize: 10, color: CustomColor.whiteSecondary),
            ),
          ),
          Spacer(),
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
                    js.context.callMethod("open", ["https://www.google.com/"]);
                  },
                  child: Icon(Icons.apple, size: 20),
                ),
                // if(projectUtils.androidLink != null)
                InkWell(onTap: () {}, child: Icon(Icons.android, size: 20)),
                // if(projectUtils.webLink != null)
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.language_outlined, size: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
