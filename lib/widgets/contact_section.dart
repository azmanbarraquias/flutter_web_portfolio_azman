import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_azman/constants/colors.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  Future<void> _sendEmail(ctx) async {
    if (!_formKey.currentState!.validate()) return;

    const serviceId = 'service_w6riyc6';
    const templateId = 'template_9uqx7iu';
    const publicKey = 'KkVlJC-A3AUvT5w15';

    final response = await http.post(
      Uri.parse('https://api.emailjs.com/api/v1.0/email/send'),
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

    ScaffoldMessenger.of(ctx).showSnackBar(
      SnackBar(
        content: Text(
          response.statusCode == 200
              ? "Message sent successfully!"
              : "Failed to send message.",
        ),
      ),
    );

    if (response.statusCode == 200) {
      _nameController.clear();
      _emailController.clear();
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Text(
              "Get in Touch",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            _buildTextField(_nameController, "Your Name"),
            _buildTextField(_emailController, "Your Email", email: true),
            _buildTextField(_messageController, "Message", maxLines: 15),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _sendEmail(context);
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              ),
              child: Text("Send Message"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
    TextEditingController controller,
    String label, {
    bool email = false,
    int maxLines = 1,
  }) {
    return Container(
      constraints: BoxConstraints(maxWidth: 700),
      padding: EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        controller: controller,
        keyboardType: email ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder( // Optional: Add border styling
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none, // Removes default border
          ),
          alignLabelWithHint: true ,
        ),
        maxLines: maxLines,
        validator: (value) {
          if (value == null || value.isEmpty) return "Please enter $label";
          if (email &&
              !RegExp(
                r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
              ).hasMatch(value)) {
            return "Enter a valid email";
          }
          return null;
        },
      ),
    );
  }

  OutlineInputBorder get getInputBorder {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(10),
    );
  }
}
