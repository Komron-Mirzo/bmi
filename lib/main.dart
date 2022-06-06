import 'package:flutter/material.dart';
import './main_page.dart';

void main() {
  runApp(const BmiApp());
}

class BmiApp extends StatelessWidget {
  const BmiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0a0e21),
          elevation: 5.0,
          shadowColor: Colors.black87,
        ),
        primaryColor: const Color(0xFF0A0E21),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFF101427),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        sliderTheme: SliderTheme.of(context).copyWith(
          trackHeight: 7.0,
          thumbShape: const RoundSliderThumbShape(
            enabledThumbRadius: 15.0,
          ),
          activeTrackColor: const Color(0xffffffff),
          inactiveTrackColor: const Color(0xFF8D8E98),
          thumbColor: const Color(0xFFEB1555),
          overlayColor: const Color(0x29EB1555),
        ),
      ),
      home: const MainPage(),
    );
  }
}
