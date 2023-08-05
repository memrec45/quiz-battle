import 'package:flutter/material.dart';
import 'package:quiz_battle/config/theme/app_colors.dart';

abstract class CustomButton extends ElevatedButton {
  const CustomButton(
      {super.key, required super.onPressed, required super.child});
  @override
  ButtonStyle? get style => const ButtonStyle(
        elevation: MaterialStatePropertyAll(3),
        backgroundColor: MaterialStatePropertyAll(AppColors.secondaryColor),
        textStyle:
            MaterialStatePropertyAll(TextStyle(fontWeight: FontWeight.bold)),
        foregroundColor: MaterialStatePropertyAll(Colors.white),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.white,
              width: 0.5,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
        shadowColor: MaterialStatePropertyAll(Color(0x663510A5)),
      );
}

class FullSizedButton extends CustomButton {
  final double screenWidth;
  const FullSizedButton({
    super.key,
    required super.onPressed,
    required super.child,
    required this.screenWidth,
  });

  @override
  ButtonStyle? get style => super.style!.copyWith(
        textStyle: const MaterialStatePropertyAll(
          TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        fixedSize: MaterialStatePropertyAll(
          Size(screenWidth * 0.9, 64),
        ),
      );
}
