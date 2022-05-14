import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:uber_clone/utils/navigations.dart';
import 'package:uber_clone/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.black,
              Colors.black87,
            ],
          )),
          child: Column(
            children: [
              const AppBannerHomeScreen(),
              const SizedBox(height: 50),
              _selectRolTitle(),
              const SizedBox(height: 30),
              UserCard(
                userType: "Cliente",
                imgUrl: "assets/img/pasajero.png",
                context: context,
              ),
              const SizedBox(height: 30),
              UserCard(
                userType: "Conductor",
                imgUrl: "assets/img/driver.png",
                context: context, 
              )
            ],
          ),
        ),
      ),
    );
  }

  // User Rol Title
  Widget _selectRolTitle() {
    return Text(
      "SELECCIONA TU ROL",
      style: TextStyle(color: Colors.white, fontFamily: "OneDay", fontSize: 20),
    );
  }
}
