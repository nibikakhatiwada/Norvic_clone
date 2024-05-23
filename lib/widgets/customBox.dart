import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final Color? color;
  final String? text;
  final IconData? icon;
  final Color? iconColor;
  final VoidCallback? onTap;
  const CustomBox(
      {super.key,
      this.color,
      this.text,
      this.icon,
      this.onTap,
      this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color),
        child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: iconColor,
                size: 40,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text!,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ]));
  }
}
