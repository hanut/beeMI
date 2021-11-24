import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'enums.dart';
import 'icon_content.dart';
import 'simple_card.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender = Gender.notSet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: SimpleCard(
                    mb: 10,
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
                    mb: 10,
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
          const Expanded(
            child: SimpleCard(
              mt: 10,
              mb: 10,
              color: kCardBGDark,
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: SimpleCard(
                    mt: 10,
                    mb: 5,
                    color: kCardBGDark,
                  ),
                ),
                Expanded(
                  child: SimpleCard(
                    mt: 10,
                    mb: 5,
                    color: kCardBGDark,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomBtnBG,
            margin: const EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            width: double.infinity,
            height: kBottomContainerHeight,
            child: MaterialButton(
              child: const Text(
                "Click Me",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onPressed: () => {},
            ),
          )
        ],
      ),
    );
  }
}
