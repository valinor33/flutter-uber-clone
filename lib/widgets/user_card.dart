import 'package:flutter/material.dart';
import 'package:uber_clone/utils/navigations.dart';

class UserCard extends StatelessWidget {
  final String userType;
  final String imgUrl;
  final BuildContext context;

  const UserCard(
      {Key? key, required this.userType, required this.imgUrl, required this.context})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        goToLoginPage(context);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              backgroundImage: AssetImage(imgUrl),
              radius: 50,
              backgroundColor: Colors.grey[900]),
          SizedBox(height: 10),
          Text(
            userType,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
