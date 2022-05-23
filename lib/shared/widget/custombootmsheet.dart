import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  final Widget widget;
  const CustomBottomSheet({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.shade100,
      width: double.infinity,
      child: widget,
    );
  }
}
