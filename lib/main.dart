import 'package:flutter/material.dart';

import 'constants.dart';
import 'input_page.dart';

void main() {
  runApp(const BMICalculator());
}

final primaryTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: kPrimaryDark,
  appBarTheme: const AppBarTheme(
    backgroundColor: kPrimaryDark,
  ),
);

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: primaryTheme,
      home: const InputPage(),
    );
  }
}
