import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'const.dart';

enum Gender {
  male, female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;

  void updateGender(Gender selectedGender) {
    // 1 = male, 2 = famale
    if (selectedGender == Gender.male) {
      maleCardColor = activeCardColor;
      femaleCardColor = inActiveCardColor;
    } else if (selectedGender == Gender.female) {
      femaleCardColor = activeCardColor;
      maleCardColor = inActiveCardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  // ReusableCard
                  child: GestureDetector(
                    onTap: () {
                      print('male card was tapped');
                      setState(() {
                        updateGender(Gender.male);
                      });
                    },
                    child: ReusableCard(
                      color: maleCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  // ReusableCard
                  child: GestureDetector(
                    onTap: () {
                      print('female card was tapped');
                      setState(() {
                        updateGender(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      color: femaleCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            // ReusableCard
            child: ReusableCard(
              color: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  // ReusableCard
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  // ReusableCard
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
