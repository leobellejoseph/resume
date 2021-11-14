import 'package:flutter/material.dart';
import 'package:resume/screens/screens.dart';

void main() {
  runApp(const MyResume());
}

class MyResume extends StatelessWidget {
  const MyResume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
