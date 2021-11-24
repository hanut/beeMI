import 'package:flutter/material.dart';

import 'constants.dart';
import 'simple_card.dart';

class ResultsPage extends StatelessWidget {
  final double bmi;

  const ResultsPage({
    Key? key,
    this.bmi = 22,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: kSimpleCardDefaultMargin,
              child: const Text(
                "YOUR RESULT",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: SimpleCard(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
                top: 5,
                bottom: 40,
              ),
              color: kCardBGDark,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "NORMAL",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: bmi > 25 || bmi < 18.5 ? Colors.red : Colors.green,
                    ),
                  ),
                  Text(
                    bmi.toStringAsFixed(1),
                    style: const TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        "Normal BMI Range:",
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "18.5 - 25 kg/m²",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 250,
                    child: Text(
                      "You have a normal body weight, Good job !",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                      ),
                    ),
                  ),
                  MaterialButton(
                    minWidth: 200,
                    color: kPrimaryDark.withAlpha(50),
                    child: Text("SAVE"),
                    onPressed: () => print(
                      "saveToCloud()",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Container(
                color: kColorAccent,
                margin: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                width: double.infinity,
                height: kBottomContainerHeight,
                child: const Center(
                  child: Text("RESTART", style: kLargeButtonTextStyle),
                ),
              ),
              onTap: () => {Navigator.pop(context)},
            ),
          )
        ],
      ),
    );
  }
}
