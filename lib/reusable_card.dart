import 'package:flutter/material.dart';
import 'const.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({Key key, @required this.color, this.cardChild})
      : super(key: key);

  final color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
