import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_portfolio_azman/constants/size.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';
import 'custom_text_field.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

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
              controller: _messageController,
              hintText: 'Let\'s talk about...',
              maxLines: 16,
            ),
          ),
          SizedBox(height: 20),
          // send button
          Container(
            width: double.maxFinite,
            constraints: BoxConstraints(maxWidth: 700),
            child: ElevatedButton(
              onPressed: () {
                _sendEmail(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Theme.of(context).primaryColor, // Button background color
                foregroundColor: Colors.white, // Text color
                padding: EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 25,
                ), // Button padding
              ),
              child: Text("Send Message"),
            ),
          ),

          SizedBox(height: 30),

          Container(
            constraints: BoxConstraints(maxWidth: 300),
            child: Divider(),
          ),

          SizedBox(height: 30),

          Container(
            width: double.maxFinite,
            constraints: BoxConstraints(maxWidth: 500),
            child: Column(
              spacing: 5,
              children: [
                Text(
                  "Let's Connect",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: CustomColor.whitePrimary,
                  ),
                ),
                Text(
                  "I'm currently looking for new opportunities, my inbox is always open. Whether you have a question or just want to say hi, I'll try my best to get back to you!",
                  style: TextStyle(
                    fontSize: 17,
                    color: CustomColor.whiteSecondary,
                  ),
                ),
              ],
            ),
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
            controller: _nameController,
            keyboardType:  TextInputType.name,
            hintText: 'Your name',
          ),
        ),
        SizedBox(width: 15),
        Flexible(
          child: CustomTextField(
            controller: _emailController,
            keyboardType:  TextInputType.emailAddress,
            hintText: 'your@email.com',
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
            controller: _nameController,
            keyboardType:  TextInputType.name,
            hintText: 'Your name',
          ),
        ),
        SizedBox(height: 15),
        Flexible(
          child: CustomTextField(
            controller: _emailController,
            keyboardType:  TextInputType.emailAddress,
            hintText: 'your@email.com',
          ),
        ),
      ],
    );
  }

  Future<void> _sendEmail(ctx) async {
    const serviceId = 'service_w6riyc6'; // From EmailJS
    const templateId = 'template_9uqx7iu';
    const publicKey = 'KkVlJC-A3AUvT5w15';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': publicKey,
        'template_params': {
          'name': _nameController.text,
          'email': _emailController.text,
          'message': _messageController.text,
        },
      }),
    );

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(
        ctx,
      ).showSnackBar(SnackBar(content: Text("Message sent successfully!")));
      _nameController.clear();
      _emailController.clear();
      _messageController.clear();
    } else {
      ScaffoldMessenger.of(
        ctx,
      ).showSnackBar(SnackBar(content: Text("Failed to send message.")));
    }
  }
}
