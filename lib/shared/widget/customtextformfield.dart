import 'package:flutter/material.dart';
import 'package:payment/shared/component/colors.dart';

class CustomTextField extends StatelessWidget {
  final bool obscure;
  final bool align;
  final String? initialValue;
  final int? max;
  final int? min;
  final String? Function(String?)? validator;
  final String? label;
  final TextEditingController? controller;
  final IconData? suffix;
  final IconData? prefix;
  final TextInputType? type;
  final VoidCallback? visiblpass;
  final VoidCallback? onedit;
  final VoidCallback? ontap;
  final FocusNode? focusNode;
  final TextInputAction? action;
  const CustomTextField(
      {this.controller,
      this.align = true,
      this.action,
      this.initialValue,
      this.focusNode,
      required this.label,
      this.max = 1,
      this.min,
      this.obscure = false,
      this.onedit,
      this.suffix,
      this.type,
      required this.validator,
      this.visiblpass,
      Key? key,
      this.prefix,
      this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        onTap: ontap,
        onEditingComplete: onedit,
        textInputAction: action,
        maxLines: max,
        minLines: min,
        initialValue: initialValue,
        controller: controller,
        style: const TextStyle(color: defcolor),
        cursorColor: defcolor,
        keyboardType: type,
        obscureText: obscure,
        validator: validator,
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            alignLabelWithHint: align,
            prefixIcon: Icon(
              prefix,
              color: Colors.grey,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                suffix,
                color: Colors.grey,
              ),
              onPressed: visiblpass,
            ),
            label: Container(color: Colors.white, child: Text(label!)),
            labelStyle: const TextStyle(color: defcolor),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: defcolor)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: defcolor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: defcolor, width: 2)),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.red),
            )),
      ),
    );
  }
}
