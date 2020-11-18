import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/results_page.dart';

const kBottomContainerHeight = 80.0;
const kBottomContainerColor = Color(0xFFEB1555);
const kInkActiveCardColor = Color(0xFF111328);
const kActiveCardColor = Color(0xFF1D1E33);
const kCardFontColor = Color(0xFF8d8e98);
const kBottomContainerOverlyColor = Color(0x29EB1555);
const kBottonColor = Color(0xFF4C4F5E);

const kLabelTextStyle = TextStyle(fontSize: 16.0, color: Color(0xFF808E98));

const kNumberTextStyle = TextStyle(
  fontSize: 34.0,
  fontWeight: FontWeight.w900,
);

const kLargeButtonTextStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);

const kResultTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF24D876),
  fontWeight: FontWeight.bold,
);

const kBMITextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const kTitleTextStyle = TextStyle(
  fontSize: 34.0,
  fontWeight: FontWeight.bold,
);

const kBodyTextStyle = TextStyle(
  fontSize: 18.0,
);

// Usage: Navigator.pushNamed(context, '/your-route-name');
Map<String, Widget Function(BuildContext)> kRoutes = {
  '/': (context) => InputPage(),
  '/results': (context) => ResultsPage(),
};
