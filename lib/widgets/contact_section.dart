import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_portfolio_azman/constants/size.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';
import 'custom_text_field.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight1,
      ),
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
          Container(
            constraints: BoxConstraints(maxWidth: 700, maxHeight: 100),
            child: LayoutBuilder(
              builder: (ctx, constraint) {
                if (constraint.maxWidth >= kMinDesktopWidth) {
                  return buildNameEmailFieldDesktop();
                } else {
                  return buildNameEmailFieldMobile();
                }
              },
            ),
          ),
          SizedBox(height: 15),
          Container(
            constraints: BoxConstraints(maxWidth: 700),
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: 'Your message',
              maxLines: 16,
            ),
          ),
          SizedBox(height: 20),
          // send button
          Container(
            width: double.maxFinite,
            constraints: BoxConstraints(maxWidth: 700),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Get in touch"),
            ),
          ),

          SizedBox(height: 30),

          Container(
            constraints: BoxConstraints(maxWidth: 300),
            child: Divider(),
          ),

          SizedBox(height: 30),

          // links profile
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  programmingLang.first.svgIcon,
                  height: 26,
                ),
              ),
              SvgPicture.asset(programmingLang.first.svgIcon, height: 26),
              SvgPicture.asset(programmingLang.first.svgIcon, height: 26),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildNameEmailFieldDesktop() {
    return Row(
      children: [
        Flexible(
          child: CustomTextField(
            controller: TextEditingController(),
            hintText: 'Your name',
          ),
        ),
        SizedBox(width: 15),
        Flexible(
          child: CustomTextField(
            controller: TextEditingController(),
            hintText: 'Your email',
          ),
        ),
      ],
    );
  }

  Widget buildNameEmailFieldMobile() {
    return Column(
      children: [
        Flexible(
          child: CustomTextField(
            controller: TextEditingController(),
            hintText: 'Your name',
          ),
        ),
        SizedBox(height: 15),
        Flexible(
          child: CustomTextField(
            controller: TextEditingController(),
            hintText: 'Your email',
          ),
        ),
      ],
    );
  }
}
