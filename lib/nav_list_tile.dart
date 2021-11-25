import 'package:flutter/material.dart';

import 'constants.dart';

class NavListTile extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final bool isSelected;
  final IconData? iconData;

  const NavListTile({
    Key? key,
    this.onTap,
    this.label = "NavTile",
    this.iconData,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0,
      highlightElevation: 0,
      constraints: const BoxConstraints.expand(
        width: double.infinity,
        height: 80,
      ),
      fillColor:
          isSelected ? kColorAccent : kCardBGDarkInactive,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Icon(
              iconData,
              size: 20,
              color: kColorWhite,
            ),
          ),
          Expanded(
            flex: 4,
            child: Text(label, style: kNavDrawerListText),
          ),
        ],
      ),
      onPressed: onTap,
    );
  }
}
