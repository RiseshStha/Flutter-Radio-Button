import 'package:flutter/material.dart';
import 'package:radio_button/screen/radio_button_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:RadioButtonScreen(),
    );
  }
}