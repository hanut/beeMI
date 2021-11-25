import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bottom_button.dart';
import 'constants.dart';
import 'counter_card.dart';
import 'enums.dart';
import 'icon_content.dart';
import 'nav_drawer.dart';
import 'simple_card.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender = Gender.notSet;
  int height = kDefaultHeight;
  int weight = kDefaultWeight;
  int age = kDefaultAge;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        drawer: NavDrawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: SimpleCard(
                      color: gender == Gender.male
                          ? kCardBGDarkActive
                          : kCardBGDarkInactive,
                      child: const IconContent(
                        icon: FontAwesomeIcons.mars,
                        iconLabel: "MALE",
                      ),
                      onTap: () {
                        setState(() {
                          gender = Gender.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: SimpleCard(
                      color: gender == Gender.female
                          ? kCardBGDarkActive
                          : kCardBGDarkInactive,
                      child: const IconContent(
                        icon: FontAwesomeIcons.venus,
                        iconLabel: "FEMALE",
                      ),
                      onTap: () {
                        setState(() {
                          gender = Gender.female;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SimpleCard(
                color: kCardBGDark,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "HEIGHT",
                      style: kIconLabelStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kValueLabelStyle,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "cm",
                          style: kIconLabelStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30),
                        overlayColor: kColorAccent.withAlpha(50),
                        thumbColor: kColorAccent,
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: kColorInactive,
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: kMinHeight,
                        max: kMaxHeight,
                        divisions: (kMaxHeight - kMinHeight).toInt(),
                        onChanged: (newHeight) {
                          setState(() {
                            height = newHeight.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CounterCard(
                      name: "WEIGHT",
                      value: weight,
                      units: "kg",
                      onIncrement: () {
                        if (weight == kMaxWeight) return;
                        setState(() {
                          ++weight;
                        });
                      },
                      onDecrement: () {
                        if (weight == kMinWeight) return;
                        setState(() {
                          --weight;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CounterCard(
                      name: "AGE",
                      value: age,
                      units: "yr",
                      onIncrement: () {
                        if (age == kMaxAge) return;
                        setState(() {
                          ++age;
                        });
                      },
                      onDecrement: () {
                        if (age == kMinAge) return;
                        setState(() {
                          --age;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              onTap: () => {Navigator.pushNamed(context, '/results')},
              label: "CALCULATE",
            ),
          ],
        ),
      ),
    );
  }
}
