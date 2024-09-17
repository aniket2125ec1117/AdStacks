import 'package:adstack/screens/dashboard.dart';
import 'package:flutter/material.dart';

const kTextTheme = TextTheme(
  titleLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
  titleMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
  bodySmall: TextStyle(color: Colors.white ),
  labelMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.bold) 
);

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: kTextTheme),
      home: Dashboard(),
    );
  }
}
