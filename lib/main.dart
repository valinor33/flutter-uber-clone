import 'package:flutter/material.dart';
import 'package:uber_clone/pages/widgets.dart';
import 'package:uber_clone/utils/colors.dart' as utils;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uber Clone',
      initialRoute: 'home',
      routes: {
        "home": (BuildContext context) => const HomePage(),
        "login": (BuildContext context) => LoginPage(),
      },
      theme: ThemeData(
        fontFamily: 'NimbusSans',
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: utils.Colors.uberCloneColor,
        ),
        primaryColor: utils.Colors.uberCloneColor,
      ),
    );
  }
}
