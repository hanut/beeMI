import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoundIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;

  const RoundIconButton({
    Key? key,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        height: 56,
        width: 56,
      ),
      fillColor: kColorFab,
      child: Icon(icon),
      onPressed: onTap,
    );
  }
}
