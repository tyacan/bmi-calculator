import 'package:flutter/material.dart';
import 'const.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {Key key, @required this.color, this.cardChild, this.onPress})
      : super(key: key);

  final color;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: cardChild,
        ),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
