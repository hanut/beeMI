import 'package:flutter/material.dart';

import 'constants.dart';
import 'pages/account_page.dart';
import 'pages/history_page.dart';
import 'pages/input_page.dart';
import 'pages/results_page.dart';

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
        '/account': (context) => const HistoryPage(),
        '/history': (context) => const AccountPage(),
      },
    );
  }
}
