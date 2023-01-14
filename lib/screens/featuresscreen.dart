import 'package:flutter/material.dart';
import 'package:kbc_vinhack/screens/aboutusscreen.dart';
import 'package:kbc_vinhack/screens/homescreen.dart';
import 'package:kbc_vinhack/screens/profilescreen.dart';

class FeaturesScreen extends StatefulWidget {
  static const String id = 'features_screen';
  const FeaturesScreen({Key? key}) : super(key: key);

  @override
  State<FeaturesScreen> createState() => _FeaturesScreenState();
}

class _FeaturesScreenState extends State<FeaturesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDAF6EF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Image(
            image: AssetImage('images/app_logo.png'),
            height: 100.0,
            width: 100.0,
          ),
          const SizedBox(
            height: 55.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37.0),
            child: Container(
              height: 55.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 20.0,
                  ),
                  Image(
                    image: AssetImage('images/news_line.png'),
                    height: 23,
                    width: 23,
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Text(
                    'News',
                    style: TextStyle(
                      color: Color(0xFF526581),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37.0),
            child: Container(
              height: 55.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 20.0,
                  ),
                  Image(
                    image: AssetImage('images/burglary.png'),
                    height: 23,
                    width: 23,
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Text(
                    'Preventing Burglary',
                    style: TextStyle(
                      color: Color(0xFF526581),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AboutUsScreen.id);
              },
              child: Container(
                height: 55.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 20.0,
                    ),
                    Image(
                      image: AssetImage('images/about_us.png'),
                      height: 23,
                      width: 23,
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Text(
                      'About Us',
                      style: TextStyle(
                        color: Color(0xFF526581),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 55.0,
          ),
          const Image(
            image: AssetImage('images/features_furniture.png'),
          ),
          const SizedBox(
            height: 17.0,
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
