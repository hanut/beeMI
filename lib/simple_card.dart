import 'package:flutter/widgets.dart';

class SimpleCard extends StatelessWidget {
  final double mt;
  final double mb;
  final double ml;
  final double mr;
  final Color color;
  final Widget? child;
  final Function? onTap;

  const SimpleCard({
    Key? key,
    required this.color,
    this.mt = 20,
    this.mb = 20,
    this.ml = 15,
    this.mr = 15,
    this.child,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: child,
        margin: EdgeInsets.fromLTRB(ml, mt, mr, mb),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onTap: () => onTap != null ? onTap!() : null,
    );
  }
}
