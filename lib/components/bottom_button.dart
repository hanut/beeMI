import 'package:bee_mi/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;

  const BottomButton({
    Key? key,
    this.onTap,
    this.label = "Bottom Button",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: kColorAccent,
        margin: const EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(label, style: kLargeButtonTextStyle),
        ),
      ),
      onTap: onTap,
    );
  }
}
