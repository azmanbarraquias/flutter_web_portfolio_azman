import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'blink_effect.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.5,
      constraints: BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                  width: 400,
                  alignment: Alignment.centerLeft,
                  child: TextAnimationScreen(),
                ),
                SizedBox(height: 10),
                Flexible(
                  child: Text(
                    'A creative Flutter developer passionate about building apps for mobile, desktop, and smartwatches. I turn ideas into engaging visuals while developing functional applications.',
                    style: TextStyle(
                      fontSize: 25,
                      color: CustomColor.whiteSecondary,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  children: [
                    SizedBox(
                      width: 250,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                          foregroundColor: Colors.white, // Text color
                          padding: EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 25,
                          ), // Button padding
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
                            color:  Theme.of(context).colorScheme.primaryContainer,
                            width: 5,
                          ),
                          // Add
                          padding: EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 25,
                          ), // Button padding
                        ),
                        child: Text('Download CV'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Flexible(child: Image.asset("assets/CatImageDev.png")),
        ],
      ),
    );
  }
}
