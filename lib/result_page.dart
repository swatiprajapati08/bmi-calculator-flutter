import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'buttonpage.dart';
class ResultPage extends StatelessWidget {

  ResultPage({@required this.interpretation,@required this.bmiResult,
    @required this.result});

  final String bmiResult;
  final String result;
  final String interpretation;

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
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
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
                  bmiResult.toUpperCase(),style: kResultTextStyle,
                ),
                Text(
                  result,style: kBMITextStyle,
                ),
                Text(
                  interpretation,
                  style: kBodyTextStyle,
                  textAlign: TextAlign.center,
                ),

              ],
            ),) ,
          ),
          BottomButton(buttonTitle: 'RE_CALCULATE',
          onTap: (){
            Navigator.pop(context);
          },),
        ],
      ),
    );
  }
}
