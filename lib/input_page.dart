import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'simple_card.dart';
import 'themes.dart';

const bottomContainerHeight = 70.0;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
              children: const [
                Expanded(
                  child: SimpleCard(
                    mb: 10,
                    mr: 5,
                    color: cardBGDark,
                    child: IconContent(
                      icon: FontAwesomeIcons.mars,
                      iconLabel: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: SimpleCard(
                    mb: 10,
                    ml: 5,
                    color: cardBGDark,
                    child: IconContent(
                      icon: FontAwesomeIcons.venus,
                      iconLabel: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: SimpleCard(
              mt: 5,
              mb: 5,
              color: cardBGDark,
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: SimpleCard(
                    mt: 10,
                    mr: 5,
                    mb: 5,
                    color: cardBGDark,
                  ),
                ),
                Expanded(
                  child: SimpleCard(
                    mt: 10,
                    ml: 5,
                    mb: 5,
                    color: cardBGDarkActive,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomBtnBG,
            margin: const EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            width: double.infinity,
            height: bottomContainerHeight,
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
