import 'package:flutter/material.dart';

class AppPage extends StatelessWidget {
  final List<Widget>? children;
  final String label;

  const AppPage({
    Key? key,
    this.children,
    this.label = "BMI CALCULATOR",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(label),
        ),
        // drawer: const NavDrawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: children ?? [],
        ),
      ),
    );
  }
}
