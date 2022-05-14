import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:uber_clone/widgets/widgets.dart';
import 'package:uber_clone/utils/colors.dart' as utils;

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          AppBannerHomeScreen(
            bgColor: utils.Colors.uberCloneColor,
            textColor: Colors.white,
            clipper: WaveClipperTwo(),
            customHeight: 0.22,
          ),
        ],
      ),
    );
  }
}
