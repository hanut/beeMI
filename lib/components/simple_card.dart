import 'package:bmi/constants.dart';
import 'package:flutter/widgets.dart';

class SimpleCard extends StatelessWidget {
  final EdgeInsets margin;
  final Color color;
  final Widget? child;
  final VoidCallback? onTap;

  const SimpleCard({
    Key? key,
    required this.color,
    this.margin = kSimpleCardDefaultMargin,
    this.child,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: child,
        margin: margin,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onTap: onTap,
    );
  }
}
