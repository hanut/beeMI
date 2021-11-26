import 'package:flutter/material.dart';

import '../components/app_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppPage(
      children: [
        Text("BMI History"),
      ],
    );
  }
}
