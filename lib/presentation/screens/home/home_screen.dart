import 'package:flutter/material.dart';

import '../../widgets/buttons/app_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(top: 8.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/splash_img.jpg'),
              fit: BoxFit.cover,
              //opacity: Get.isDarkMode ? 0.05 : 0.4
            ),
          ),
          child: Column(
            children: [
              buildMenuItem(() {}, 'Continue'),
              buildMenuItem(() {}, 'New Game'),
              buildMenuItem(() {}, 'Leaderboard'),
              buildMenuItem(() {}, 'How to play'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(void Function() onPressed, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: AppButton(onPressed: onPressed, title: title),
    );
  }
}
