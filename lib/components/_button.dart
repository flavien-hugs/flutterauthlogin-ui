import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String buttonText;
  final Function()? onTap;
  final Color backgroundColor;
  final TextStyle textStyle;

  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onTap,
    this.backgroundColor = Colors.blue,
    this.textStyle = const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 16,
      fontFamily: 'Roboto',
      letterSpacing: 1.2,
    )
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
