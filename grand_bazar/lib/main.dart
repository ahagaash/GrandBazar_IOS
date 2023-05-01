import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:grand_bazar/Models/bazarEvents.dart';
import 'package:grand_bazar/Screens/Profile/profile.dart';
import 'package:page_transition/page_transition.dart';
import 'Screens/Login/login.dart';
import 'package:grand_bazar/Screens/Home/Components/drawer.dart';
import 'Screens/Home/home.dart';
import 'package:grand_bazar/Screens/Home/Components/drawer.dart';
import 'package:grand_bazar/Screens/DetailScreens/bazarTalkDetailPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(children: [
        Image.asset(
          'assets/grandbazaarLogo.png',
          height: 195.0,
        ),
        const Text(
          'Grand Bazaar',
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(244, 247, 230, 4),
              fontFamily: 'Abril Fatface'),
        )
      ]),
      backgroundColor: const Color.fromARGB(255, 36, 35, 35),
      nextScreen: const LoginScreen(),
      splashIconSize: 250,
      duration: 5000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 5),
    );
    // return MaterialApp(
    //   title: 'Grand Bazar',
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     scaffoldBackgroundColor: Colors.white,
    //     textTheme: Theme.of(context).textTheme.apply(
    //           bodyColor: Colors.white,
    //           fontFamily: 'Montserrat',
    //         ),
    //   ),
    //   home: const Home(),
    // );
  }
}
