import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';


class AppBannerHomeScreen extends StatelessWidget {
  const AppBannerHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: DiagonalPathClipperTwo(),
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "assets/img/logo_app.png",
              width: 150,
              height: 100,
            ),
            const Text(
              "Facil y rapido",
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 22,
              ),
            )
          ],
        ),
      ),
    );
  }
}
