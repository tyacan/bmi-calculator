import 'package:flutter/material.dart';
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
          size: 80,
        ),
        SizedBox(height: 15),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.0,
            color: cardFontColor,
          ),
        ),
      ],
    );
  }
}