import 'package:flutter/material.dart';

extension EmptyPadding on num {
  get pw => SizedBox(
        width: toDouble(),
      );
  get ph => SizedBox(
        height: toDouble(),
      );
}
