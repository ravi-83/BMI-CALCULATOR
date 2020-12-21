import 'package:flutter/material.dart';
import 'constants.dart';

class WidgetContainer extends StatelessWidget {

  WidgetContainer({this.ccolor,this.cardChild});
  final Color ccolor;
  final Widget cardChild;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ccolor,
      ),
    );
  }
}