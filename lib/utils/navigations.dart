import 'package:flutter/material.dart';

void goToLoginPage(BuildContext context) {
  Navigator.pushNamed(context, "login");
}

void goToRegisterPage(BuildContext context) {
  Navigator.pushNamed(context, "register");
}
