import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'splash.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size; // get screen size
    final double width = size.width; // get screen width
    final double height = size.height; // get screen height
    final double hpw2 = (height + width) / 200;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown,
        },
      ),
      home: const Splash(),
      theme: ThemeData(

        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(27, 41, 68, 1),
          titleTextStyle: TextStyle(
            fontSize: hpw2 * 2.4,
            fontWeight: FontWeight.w300,
            fontFamily: 'Inter',
            color: Colors.white,
          ),
        ),
      ),
      title: 'SpaceBird Aerospace',
    );
  }
}
