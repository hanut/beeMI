import 'package:flutter/material.dart';

import '../bmi_report.dart';
import '../components/bottom_button.dart';
import '../components/simple_card.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final report = ModalRoute.of(context)!.settings.arguments as BmiReport;

    return SafeArea(
      child: Scaffold(
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
                      report.message,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: report.color,
                      ),
                    ),
                    Text(
                      report.bmi,
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
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 40,
                      ),
                      child: Text(
                        report.interpretation,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                        ),
                      ),
                    ),
                    MaterialButton(
                      minWidth: 200,
                      color: kPrimaryDark.withAlpha(50),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        child: Text("SAVE"),
                      ),
                      onPressed: () => {},
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: BottomButton(
                label: "GO BACK",
                onTap: () => {Navigator.pop(context)},
              ),
            )
          ],
        ),
      ),
    );
  }
}
