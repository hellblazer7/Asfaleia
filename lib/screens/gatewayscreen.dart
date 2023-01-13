import 'package:flutter/material.dart';
import 'package:kbc_vinhack/components/roundedbutton.dart';
import 'package:kbc_vinhack/screens/profilescreen.dart';

import '../components/lefthorizontalline.dart';
import '../components/righthorizontalline.dart';

class GatewayScreen extends StatelessWidget {
  static const String id = 'gateway_screen';
  const GatewayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDAF6EF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              SizedBox(
                height: 50.0,
              ),
              Image(
                image: AssetImage('images/app_logo.png'),
                height: 130,
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
                    fontSize: 27.0,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 53.0,
          ),
          const Image(
            image: AssetImage('images/sign_in_up.png'),
            height: 190.0,
            width: double.infinity,
          ),
          const SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 95.0),
            child: RoundedButton(
              boxShadow: const BoxShadow(
                blurRadius: 7.8,
                spreadRadius: -15.0,
                offset: Offset(5, 0),
                color: Color(0xFF01111E), // changes position of shadow
              ),
              color: const Color(0xFF01111E),
              borderRadius: const BorderRadius.all(
                Radius.circular(14.0),
              ),
              onPressed: () {
                Navigator.pushNamed(context, ProfileScreen.id);
              },
              displayText: 'Create Account',
              width: 0,
              textColor: const Color(0xFFF8ECEC),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomPaint(painter: LeftHorizontalLine()),
              const Text(
                "Already a Member?",
                style: TextStyle(
                    color: Color(0xFF191919),
                    fontSize: 14.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600),
              ),
              CustomPaint(painter: RightHorizontalLine()),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 95.0),
            child: RoundedButton(
              boxShadow: const BoxShadow(
                color: Color(0xFFDAF6EF),
                blurRadius: 5.8,
                spreadRadius: -0.1,
                offset: Offset(5, 0),
              ),
              color: const Color(0x0F292929),
              borderRadius: const BorderRadius.all(
                Radius.circular(14.0),
              ),
              onPressed: () {
                Navigator.pushNamed(context, ProfileScreen.id);
              },
              displayText: 'Sign In',
              width: 0,
              textColor: const Color(0xFF191919),
            ),
          ),
        ],
      ),
    );
  }
}
