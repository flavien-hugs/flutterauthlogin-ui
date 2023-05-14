import 'package:flutter/material.dart';

class LogoIcon extends StatelessWidget {
  const LogoIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: Image.asset(
        'assets/images/logo.png',
        height: 80,
        cacheHeight: 80,
        fit: BoxFit.fitHeight,
        filterQuality: FilterQuality.high,
        errorBuilder: (context, error, stackTrace) {
          return const Icon(
            Icons.person,
            size: 80,
          );
        },
      ),
    );
  }
}
