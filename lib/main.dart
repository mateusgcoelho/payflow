import "package:flutter/material.dart";
import 'package:payflow/modules/login/login_page.dart';
import "package:payflow/modules/splash/splash_page.dart";
import "package:payflow/shared/themes/app_colors.dart";

void main() {
  runApp(MaterialApp(
    title: "Pay Flow",
    theme: ThemeData(primaryColor: AppColors.primary),
    home: LoginPage(),
  ));
}
