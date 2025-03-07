import 'package:flutter/material.dart';

import '../constants/colors.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: Text(
        "Made by Azman Barraquias with flutter 3.29",
        style: TextStyle(color: CustomColor.whiteSecondary),
      ),
    );
  }
}
