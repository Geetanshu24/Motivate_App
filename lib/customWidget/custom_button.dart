import 'package:flutter/material.dart';
import 'package:suggestion_app/constant/color_constants.dart';
import 'package:suggestion_app/customWidget/custom_text_widget.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double height;

  const CustomButton({super.key,
    required this.text,
    required this.onPressed,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: ColorConstants.black,
        border: Border.all(width: 1,color: ColorConstants.darkGray),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Center(
          child: CustomTextWidget(
            text: text,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
