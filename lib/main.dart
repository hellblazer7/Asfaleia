import 'package:flutter/material.dart';
import 'package:kbc_vinhack/screens/featuresscreen.dart';
import 'package:kbc_vinhack/screens/gatewayscreen.dart';
import 'package:kbc_vinhack/screens/homescreen.dart';
import 'package:kbc_vinhack/screens/profilescreen.dart';
import 'package:kbc_vinhack/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        GatewayScreen.id: (context) => const GatewayScreen(),
        ProfileScreen.id: (context) => const ProfileScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        FeaturesScreen.id: (context) => const FeaturesScreen(),
      },
    );
  }
}
