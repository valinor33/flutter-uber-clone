import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class AppBannerHomeScreen extends StatelessWidget {
  const AppBannerHomeScreen(
      {Key? key, this.clipper, this.bgColor, this.textColor, this.customHeight})
      : super(key: key);

  final CustomClipper<Path>? clipper;
  final Color? bgColor;
  final Color? textColor;
  final double? customHeight;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: clipper ?? DiagonalPathClipperTwo(),
      child: Container(
        color: bgColor ?? Colors.white,
        height: MediaQuery.of(context).size.height * (customHeight ?? 0.3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: customHeight != null
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/img/logo_app.png",
              width: 150,
              height: 100,
            ),
            Text(
              "Facil y rapido",
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 22,
                color: textColor ?? Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
