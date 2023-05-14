import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget btnIcon;
  final VoidCallback btnOnPressed;

  const CustomAppBar({
    super.key,
    required this.btnIcon,
    required this.btnOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white.withOpacity(0),
      leading: IconButton(
        icon: btnIcon,
        onPressed: btnOnPressed,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
