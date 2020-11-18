import 'package:flutter/material.dart';
import 'const.dart';
class IconContent extends StatelessWidget {
  const IconContent({Key key, this.icon, this.label, this.color})
      : super(key: key);

  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 60,
        ),
        SizedBox(height: 15),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
