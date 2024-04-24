import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final TextDecoration? decoration;
  final Color? decorationColor;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final String fontFamily;

  const CustomTextWidget({
    super.key,
    required this.text,
    required this.fontWeight,
    required this.fontSize,
    required this.color,
    this.decoration,
    this.decorationColor,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.fontFamily = "Roboto"
  });

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).textScaleFactor;
    final adjustedSize = (fontSize / size);
    return Text(
      text,
      maxLines: maxLines,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: adjustedSize,
        color: color,
        decoration: decoration,
        fontFamily: fontFamily,
        decorationColor: decorationColor,
        overflow: overflow,
      ),
      textAlign: textAlign,
    );
  }
}
