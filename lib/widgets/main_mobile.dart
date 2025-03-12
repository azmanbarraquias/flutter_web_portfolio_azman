import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'blink_effect.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/CatImageDev.png", width: screenWidth),
          Text(
            'Hello, I\'m',
            style: TextStyle(
              fontSize: 40,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Container(
            height: 50,
            width: 350,
            alignment: Alignment.centerLeft,
            child: TextAnimationScreen(),
          ),
          SizedBox(height: 10),
          Flexible(
            child: Text(
              'A creative Flutter developer passionate about building apps for mobile, desktop, and smartwatches. I turn ideas into engaging visuals while developing functional applications.',
              style: TextStyle(fontSize: 25, color: CustomColor.whiteSecondary),
            ),
          ),
          SizedBox(height: 15),
          Column(
            spacing: 15,
            children: [
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    Theme.of(
                      context,
                    ).primaryColor, // Button background color
                    foregroundColor: Colors.white, // Text color
                  ),
                  child: Text('Get in touch'),
                ),
              ),
              SizedBox(
                width: 250,
                child: TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    // Button background color
                    foregroundColor: Colors.white,
                    // Text color
                    side: BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    ),
                    // Add
                  ),
                  child: Text('Download CV'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
