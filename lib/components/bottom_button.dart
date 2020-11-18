import 'package:flutter/material.dart';
import '../const.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key key,
    @required this.onTap,
    @required this.buttonTitle,
  }) : super(key: key);

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        child: Center(
          child: Text(
            this.buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        padding: EdgeInsets.only(
          bottom: 15,
        ),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}