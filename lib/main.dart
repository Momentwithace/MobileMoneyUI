// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moni_ui/screens/cash.dart';
import 'package:moni_ui/screens/home.dart';

import 'config/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appTheme,
      home: const PageController(),
    );
  }
}

class PageController extends StatefulWidget {
  const PageController({
    super.key,
  });

  @override
  State<PageController> createState() => _PageControllerState();
}

class _PageControllerState extends State<PageController> {
  int _currentIndex = 0;
  List screens = const [Home(), Cash()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: const TextStyle(fontFamily: "Pangram"),
          unselectedLabelStyle: const TextStyle(fontFamily: "Pangram"),
          selectedItemColor: Colors.orange,
          currentIndex: _currentIndex,
          onTap: (value) => setState(() {
                _currentIndex = value;
              }),
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/home.svg",
                    color: _currentIndex == 0
                        ? const Color(0xFFFFAB9F)
                        : const Color(0xFFDEDDE1)),
                label: "Home"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/cash.svg",
                    color: _currentIndex == 1
                        ? const Color(0xFFFFAB9F)
                        : const Color(0xFFDEDDE1)),
                label: "Cash"),
          ]),
      body: screens[_currentIndex],
    );
  }
}
