import 'package:flutter/material.dart';
import 'constants.dart';

class IconsWidget extends StatelessWidget {
  IconsWidget({@required this.text, @required this.iconsGender});
  final String text;
  final IconData iconsGender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconsGender,
          size: 80,
        ),
        SizedBox(height: 15),
        Text(
          text,
          style: labelTextStyle,
        )
      ],
    );
  }
}
