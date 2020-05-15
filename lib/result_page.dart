import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text('Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),

          Expanded(
            flex: 5,
            child: ReusableCard(colour: kActivecardcolor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Normal',style: kResultTextStyle,
                ),
                Text(
                  '18.3',style: kBMITextStyle,
                ),
                Text(
                  'Your BMI result is quite low,you should eat more',
                  style: kBodyTextStyle,
                  textAlign: TextAlign.center,
                ),

              ],
            ),) ,
          ),
        ],
      ),
    );
  }
}
