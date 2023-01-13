import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:kbc_vinhack/screens/profilescreen.dart';

import 'featuresscreen.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDAF6EF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              SizedBox(
                width: 45,
              ),
              Center(
                child: Text(
                  'DEVICE STATUS',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF191919),
                  ),
                ),
              ),
              Image(
                image: AssetImage('images/app_logo.png'),
                height: 45,
                width: 45,
              ),
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'OFF',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF062C80),
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                width: 13.0,
              ),
              FlutterSwitch(
                width: 150.0,
                height: 50.0,
                toggleSize: 50.0,
                value: status,
                borderRadius: 80.0,
                padding: 0.0,
                toggleColor: const Color(0xFFFFED90),
                switchBorder: Border.all(
                  color: const Color(0xFF01182C),
                  width: 5.0,
                ),
                toggleBorder: Border.all(
                  color: const Color(0xFF01182C),
                  width: 5.0,
                ),
                activeColor: const Color(0xFFFFED90),
                inactiveColor: const Color(0xFF01182C),
                activeIcon: const ImageIcon(
                  AssetImage(
                    'images/open_eye.png',
                  ),
                  color: Color(0xFF01182C),
                ),
                inactiveIcon: const ImageIcon(
                  AssetImage(
                    'images/closed_eye.png',
                  ),
                  color: Color(0xFF01182C),
                ),
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),
              const SizedBox(
                width: 13.0,
              ),
              const Text(
                'ON',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF062C80),
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
          const Center(
            child: Text(
              'Secure Your Home Now',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                color: Color(0xFF062C80),
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Container(
            padding: const EdgeInsets.only(left: 35),
            child: const Text(
              'NOTIFICATIONS',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Color(0xFF062C80),
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              height: 75.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 0.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'MASTER BEDROOM - 1',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF062C80),
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Detected movement',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF062C80),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '14-01-23',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF062C80),
                          fontSize: 9,
                        ),
                      ),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text(
                        '4:11PM',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF062C80),
                          fontSize: 9,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                ],
              ),
            ),
          ),
          // const SizedBox(
          //   height: 17.0,
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
          //   child: Container(
          //     height: 75.0,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(12.0),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         const SizedBox(
          //           width: 0.0,
          //         ),
          //         Column(
          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //           children: const [
          //             Text(
          //               'MASTER BEDROOM - 1',
          //               style: TextStyle(
          //                 fontFamily: 'Poppins',
          //                 fontWeight: FontWeight.w700,
          //                 color: Color(0xFF062C80),
          //                 fontSize: 12,
          //               ),
          //             ),
          //             Text(
          //               'Detected movement',
          //               style: TextStyle(
          //                 fontFamily: 'Poppins',
          //                 fontWeight: FontWeight.normal,
          //                 color: Color(0xFF062C80),
          //                 fontSize: 12,
          //               ),
          //             ),
          //           ],
          //         ),
          //         Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: const [
          //             Text(
          //               '14-01-23',
          //               style: TextStyle(
          //                 fontFamily: 'Poppins',
          //                 fontWeight: FontWeight.normal,
          //                 color: Color(0xFF062C80),
          //                 fontSize: 9,
          //               ),
          //             ),
          //             SizedBox(
          //               height: 7.0,
          //             ),
          //             Text(
          //               '4:11PM',
          //               style: TextStyle(
          //                 fontFamily: 'Poppins',
          //                 fontWeight: FontWeight.normal,
          //                 color: Color(0xFF062C80),
          //                 fontSize: 9,
          //               ),
          //             ),
          //           ],
          //         ),
          //         const SizedBox(
          //           width: 5.0,
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          const SizedBox(
            height: 15.0,
          ),
          const Center(
            child: Text(
              'Show More',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                color: Color(0xFF191919),
              ),
            ),
          ),
          const SizedBox(
            height: 95.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Image(
              image: AssetImage('images/furniture.png'),
              width: double.infinity,
            ),
          ),
          const SizedBox(
            height: 20.0,
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
                  onTap: () {},
                  child: const Image(
                    image: AssetImage('images/home_tapped.png'),
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
