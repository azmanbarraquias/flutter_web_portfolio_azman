import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 500),
      child: Column(
        children: [
          Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              ...List.generate(platformItem.length, (i) {
                return Container(
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
                    title: Text(platformItem[i].title),
                  ),
                );
              }),
            ],
          ),
          SizedBox(height: 50),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              ...List.generate(programmingLang.length, (i) {
                return Chip(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  backgroundColor: CustomColor.bgLight2,
                  label: Text(programmingLang[i].title),
                  avatar: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return  programmingLang[i].unlock == false ? LinearGradient(
                        colors: [
                          CustomColor.scaffoldBg.withValues(alpha: 0.9),
                          CustomColor.scaffoldBg.withAlpha((0.9 * 255).toInt()),
                        ],
                      ).createShader(bounds)  : LinearGradient(colors: [
                        CustomColor.scaffoldBg.withValues(alpha: 0),
                        CustomColor.scaffoldBg.withValues(alpha: 0),

                      ]).createShader(bounds);
                    },
                    blendMode: BlendMode.srcATop,
                    child: SvgPicture.asset(
                      programmingLang[i].svgIcon,
                      height: 26,
                    ),
                  ),
                );
              }),
            ],
          ),
        ],
      ),
    );
  }
}
