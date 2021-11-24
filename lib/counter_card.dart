import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'round_icon_button.dart';
import 'simple_card.dart';

class CounterCard extends StatelessWidget {
  final EdgeInsets margin;
  final int value;
  final String units;
  final String name;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const CounterCard({
    Key? key,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
    this.units = "unit",
    this.name = "COUNTER",
    this.margin = kSimpleCardDefaultMargin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleCard(
      margin: margin,
      color: kCardBGDark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(name, style: kIconLabelStyle),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(value.toString(), style: kValueLabelStyle),
              const SizedBox(width: 10),
              Text(
                units,
                style: kIconLabelStyle,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RoundIconButton(
                onTap: onDecrement,
                icon: FontAwesomeIcons.minus,
              ),
              RoundIconButton(
                onTap: onIncrement,
                icon: FontAwesomeIcons.plus,
              ),
            ],
          )
        ],
      ),
    );
  }
}
