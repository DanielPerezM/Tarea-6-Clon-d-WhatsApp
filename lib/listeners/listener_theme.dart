import 'package:flutter/material.dart';

class ValueListener {
  static final ValueNotifier<bool> isDarkMode = ValueNotifier(
    false,
  ); //detectamos el cambio de valor de una variable y trabajr con ello se hace un render
}
