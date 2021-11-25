import 'package:flutter/material.dart';

import 'constants.dart';
import 'input_page.dart';
import 'results_page.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => const InputPage(),
        '/results': (context) => const ResultsPage(),
        '/account': (context) =>
            Container(child: const Text("Account & Profile")),
        '/history': (context) => Container(child: const Text("BMI History")),
      },
    );
  }
}
