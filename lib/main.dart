import 'package:flutter/material.dart';
import 'package:flutter_cep_clean_and_tests/app_module.dart';
import 'package:flutter_cep_clean_and_tests/app_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}