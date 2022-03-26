import 'package:flutter/material.dart';

class CustomTabButton extends StatelessWidget {
  final String title;
  final Color? color;
  final VoidCallback onTabClick;

  const CustomTabButton({
    Key? key,
    this.title = "",
    this.color = Colors.transparent,
    required this.onTabClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          onTabClick();
        },
        child: Container(
          color: color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title)
            ],
          ),
        ),
      ),
    );
  }
}
