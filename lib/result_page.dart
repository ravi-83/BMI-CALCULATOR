import 'package:flutter/material.dart';
import 'widget_container.dart';
import 'constants.dart';


class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult,@required this.text,@required this.inter,@required this.lowerW,@required this.higherW,@required this.note, @required this.icon,@required this.colour});
  final String bmiResult;
  final String text;
  final String inter;
  final String lowerW;
  final String higherW;
  final String note;
  final IconData icon;
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(

              child: Container(
                padding: EdgeInsets.only(left: 15),
                alignment: Alignment.bottomLeft,

                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              )
          ),
          Expanded(
            flex: 5,
            child: WidgetContainer(
              ccolor: color_card,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Body Mass Index',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    text.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icon,
                        color: colour,
                        size: 30,
                      ),
                      SizedBox(width: 10,),
                      Text(
                        note,
                        style: TextStyle(
                          fontSize: 20
                        ),
                      ),
                    ],

                  ),

                  Text(
                    inter,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),


                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },

            child: Container(
              margin: EdgeInsets.only(top: 10),
              color: bottomContainerColor,
              width: double.infinity,
              height: bottomBarHeight,
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: kLargeButtonTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),


    );
  }

}
