import 'dart:async';
import 'package:flutter/material.dart';

class TextAnimationScreen extends StatefulWidget {
  const TextAnimationScreen({super.key});

  @override
  State<TextAnimationScreen> createState() => _TextAnimationScreenState();
}

class _TextAnimationScreenState extends State<TextAnimationScreen> {
  final List<String> listOfText = [
    "Azman Barraquias",
    "Flutter Developer",
    "Mobile App Developer",
    "Desktop Developer",
    "Web App Developer",
    "WatchOS Developer",
  ];

  String displayedText = "";
  int charIndex = 0;
  bool isDeleting = false;
  bool showCursor = true; // For blinking cursor effect
  int listIndex = 0;

  Timer? typingTimer;
  Timer? cursorTimer;

  @override
  void initState() {
    super.initState();
    _startTypingAnimation();
    _startCursorBlink();
  }

  @override
  void dispose() {
    typingTimer?.cancel();
    cursorTimer?.cancel();
    super.dispose();
  }

  void _startTypingAnimation() {
    typingTimer = Timer.periodic(const Duration(milliseconds: 150), (timer) {
      setState(() {
        if (isDeleting) {
          if (displayedText.isNotEmpty) {
            displayedText = displayedText.substring(0, displayedText.length - 1);
          } else {
            isDeleting = false;
            charIndex = 0;
          }
        } else {
          if (charIndex < listOfText[listIndex].length) {
            displayedText += listOfText[listIndex][charIndex];
            charIndex++;
          } else {
            isDeleting = true;
            if (listIndex >= listOfText.length - 1) {
              listIndex = 0;
            } else {
              listIndex++;
            }
          }
        }
      });
    });
  }

  void _startCursorBlink() {
    cursorTimer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      setState(() {
        showCursor = !showCursor;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        children: [
          TextSpan(
            text: displayedText,
            style: const TextStyle(fontSize: 40, color: Colors.white),
          ),
          if (showCursor)
            const TextSpan(
              text: "|",
              style: TextStyle(
                fontSize: 40,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ), // Change cursor color here
            ),
        ],
      ),
    );
  }
}
