import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        'Dev_AZUMA',
        style: TextStyle(
          fontSize: 25,
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.bold,
          // decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
