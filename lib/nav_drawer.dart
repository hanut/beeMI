import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'nav_list_tile.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  String selectedRouted = '/';

  void navigate(String routeName) {
    print("Navigate to: " + routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: kCardBGDarkActive,
            width: double.infinity,
            height: 220,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  FontAwesomeIcons.heartbeat,
                  size: 100,
                  color: Colors.white,
                ),
                Text(
                  "WHATS MY, BMI",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 2,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 20),
              color: kCardBGDarkInactive,
              child: Column(
                children: [
                  NavListTile(
                    label: "BMI Calculator",
                    iconData: FontAwesomeIcons.calculator,
                    onTap: () => navigate('/'),
                    isSelected: true,
                  ),
                  NavListTile(
                    label: "History",
                    iconData: FontAwesomeIcons.history,
                    onTap: () => navigate('/history'),
                  ),
                  NavListTile(
                    label: "Account & Profile",
                    iconData: FontAwesomeIcons.userAlt,
                    onTap: () => navigate('/accounts'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
