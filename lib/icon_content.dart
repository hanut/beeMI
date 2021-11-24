import 'package:flutter/widgets.dart';

import 'constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String iconLabel;
  final double iconSize;

  const IconContent({
    Key? key,
    required this.icon,
    required this.iconLabel,
    this.iconSize = 80.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        kSeparator,
        Text(
          iconLabel,
          style: kIconLabelStyle,
        ),
      ],
    );
  }
}
