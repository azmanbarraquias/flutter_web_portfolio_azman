import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: 450),
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
            alignment: WrapAlignment.center,
            children: [
              ...List.generate(platformItem.length, (i) {
                return Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: CustomColor.bgLight2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    leading: SvgPicture.asset(
                      platformItem[i].svgIcon,
                      height: 26,
                      // colorFilter: const ColorFilter.mode(
                      //     Colors.white, BlendMode.srcIn),
                    ),
                    title: Text(
                      platformItem[i].title,
                      style: TextStyle(color: CustomColor.whitePrimary),
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
        SizedBox(width: 50),
        Flexible(
          child: Container(
            constraints: BoxConstraints(maxWidth: 500),
            child: Wrap(
              spacing: 5,
              runSpacing: 5,
              alignment: WrapAlignment.center,
              children: [
                ...List.generate(programmingLang.length, (i) {
                  return Chip(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    elevation: 2,
                    backgroundColor: CustomColor.bgLight2,
                    label: Text(
                      programmingLang[i].title,
                      style: TextStyle(color: CustomColor.whitePrimary),
                    ),
                    avatar: SvgPicture.asset(
                      programmingLang[i].svgIcon,
                      height: 26,
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
