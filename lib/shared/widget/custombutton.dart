import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final String text;
  final VoidCallback? onpressed;
  final VoidCallback? onlong;
  final double radius;
  final double height;
  final double fontsize;
  final Color? color;

  const CustomButton(
      {required this.text,
      this.height = 40,
      this.width = 400,
      this.color,
      this.fontsize = 18,
      this.onlong,
      this.onpressed,
      this.radius = 10,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius), color: color),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: fontsize),
            ),
          )),
    );
  }
}
