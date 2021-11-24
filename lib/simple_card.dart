import 'package:flutter/widgets.dart';

class SimpleCard extends StatelessWidget {
  final double mt;
  final double mb;
  final double ml;
  final double mr;
  final Color color;
  final Widget? child;

  const SimpleCard({
    Key? key,
    required this.color,
    this.mt = 20,
    this.mb = 20,
    this.ml = 10,
    this.mr = 10,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.fromLTRB(ml, mt, mr, mb),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
