import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/cupertino.dart' show CupertinoIcons;

class CustomTextField extends StatelessWidget {
  final String placeholder;
  final IconData? prefixIcon;
  final EdgeInsetsGeometry padding;
  final BorderRadiusGeometry borderRadius;
  final BorderSide borderSide;
  final TextStyle? textStyle;
  final ValueChanged<String>? onChanged;

  const CustomTextField({
    Key? key,
    required this.placeholder,
    this.prefixIcon,
    this.padding = const EdgeInsets.all(10.0),
    this.borderRadius = const BorderRadius.all(Radius.circular(10.0)),
    this.borderSide = const BorderSide(color: Colors.grey),
    this.textStyle,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return cupertino.CupertinoTextField(
      padding: padding,
      prefix: prefixIcon != null
          ? Icon(
              prefixIcon,
              color: Colors.grey,
            )
          : null,
      placeholder: placeholder,
      decoration: BoxDecoration(
        border: Border(
          bottom: borderSide,
        ),
        borderRadius: borderRadius,
      ),
      onChanged: onChanged,
      style: textStyle,
    );
  }
}
