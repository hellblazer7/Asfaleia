import 'package:flutter/material.dart';
import 'package:kbc_vinhack/screens/featuresscreen.dart';

import 'homescreen.dart';

class ProfileScreen extends StatefulWidget {
  static const String id = 'profile_screen';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDAF6EF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Center(
            child: Text(
              'ASFALEIA',
              style: TextStyle(
                fontFamily: 'ColonnaMT',
                fontSize: 27.0,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          const Image(
            image: AssetImage('images/profile_image.png'),
            height: 150.0,
            width: 150.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          const Center(
            child: Text(
              'yourname@example.com',
              textAlign: TextAlign.end,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Center(
            child: const Text(
              'CUSTOMER NAME',
              textAlign: TextAlign.end,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18.0,
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                width: 35,
              ),
              Image(
                image: AssetImage('images/gear.png'),
                height: 30.0,
                width: 30.0,
              ),
              SizedBox(
                width: 21.0,
              ),
              Center(
                child: Text(
                  'Help and Support',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                width: 35,
              ),
              Image(
                image: AssetImage('images/info_icon.png'),
                height: 30.0,
                width: 30.0,
              ),
              SizedBox(
                width: 21.0,
              ),
              Center(
                child: Text(
                  'About Asfaleia',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 55.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Log Out',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              ImageIcon(
                AssetImage('images/logout.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 100.0,
          ),
          Container(
            height: 75.0,
            width: double.infinity,
            color: const Color(0xFFE0FCF3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, FeaturesScreen.id);
                  },
                  child: const Image(
                    image: AssetImage('images/menuhamburger.png'),
                    height: 40.0,
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
                  onTap: () {},
                  child: const Image(
                    image: AssetImage('images/profile_tapped.png'),
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
