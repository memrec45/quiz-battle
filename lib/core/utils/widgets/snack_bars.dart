import 'package:flutter/material.dart';
import 'package:quiz_battle/config/theme/app_colors.dart';

abstract class Snack extends SnackBar {
  const Snack({super.key, required super.content});

  @override
  DismissDirection get dismissDirection => DismissDirection.horizontal;

  @override
  SnackBarBehavior? get behavior => SnackBarBehavior.floating;
}

class ErrorSnack extends Snack {
  final String message;
  const ErrorSnack(
      {super.key, super.content = const Text(""), required this.message});

  @override
  Widget get content => Text(
        message,
        style: const TextStyle(fontWeight: FontWeight.w700),
      );

  @override
  Color? get backgroundColor => Colors.red;
}

class SuccessSnack extends Snack {
  final String message;
  const SuccessSnack(
      {super.key, super.content = const Text(""), required this.message});

  @override
  Widget get content => Text(
        message,
        style: const TextStyle(fontWeight: FontWeight.w700),
      );

  @override
  Color? get backgroundColor => AppColors.greenColor;
}
