import 'package:flutter/material.dart';
import 'package:kbc_vinhack/constants.dart';
import 'package:kbc_vinhack/screens/profilescreen.dart';

import 'homescreen.dart';

class AboutUsScreen extends StatelessWidget {
  static const String id = 'about_us_screen';
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDAF6EF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Image(
                  image: AssetImage('images/back_arrow.png'),
                  height: 55,
                  width: 55,
                ),
              ),
              const Center(
                child: Text(
                  'ABOUT US',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF191919),
                  ),
                ),
              ),
              const Image(
                image: AssetImage('images/app_logo.png'),
                height: 45,
                width: 45,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40.0,
              right: 40.0,
              top: 40.0,
              bottom: 60.0,
            ),
            child: Text(
              about_us,
              style: const TextStyle(
                color: Color(0xFF000000),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          const Image(
            image: AssetImage('images/about_us_furniture.png'),
            height: 300,
            width: double.infinity,
          ),
          Container(
            height: 75.0,
            width: double.infinity,
            color: const Color(0xFFE0FCF3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Image(
                    image: AssetImage('images/tapped_menuhamburger.png'),
                    height: 45.0,
                    width: 40.0,
                  ),
                ),
                const SizedBox(
                  width: 100.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, HomeScreen.id);
                  },
                  child: const Image(
                    image: AssetImage('images/home.png'),
                    height: 40.0,
                    width: 40.0,
                  ),
                ),
                const SizedBox(
                  width: 100.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, ProfileScreen.id);
                  },
                  child: const Image(
                    image: AssetImage('images/profile.png'),
                    height: 40.0,
                    width: 40.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
