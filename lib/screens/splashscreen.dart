import 'package:flutter/material.dart';
import 'package:kbc_vinhack/screens/gatewayscreen.dart';

class SplashScreen extends StatelessWidget {
  static const String id = 'splash_screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDAF6EF),
      body: GestureDetector(
        onTap: () {
          Navigator.popAndPushNamed(context, GatewayScreen.id);
        },
        child: Padding(
          padding: const EdgeInsets.all(
            10.0,
          ),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/splash_screen.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Image(
                      image: AssetImage('images/app_logo.png'),
                      height: 180,
                      width: 250,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: Text(
                        'ASFALEIA',
                        style: TextStyle(
                          fontFamily: 'ColonnaMT',
                          fontSize: 36.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
