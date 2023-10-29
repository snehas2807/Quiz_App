import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({super.key});
  final int resultScore;
  final VoidCallback resethandler;

  Result(this.resultScore, this.resethandler);

  String get resultPhrase {
    var resultText;

    if (resultScore > 30)
      resultText = 'Congragulation!!!! Clown Outfit Unlocked';
    else
      resultText = 'Abhi bhi time hai nikal le yaha se';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            onPressed: resethandler,
            child: Text('Restart the quiz'),
            // style: ButtonStyle(backgroundColor: Color.blue),
            //child: Column (  // we use this by using shortcut key ctrl+k and ctrl+s and then wrap column
            //children: <widget>[
            //Text( resultPhrase,
            //style:TextStyle(fontSize: 36, fontWeight: FontWeight: FontWeight.bold),
            //textAlign: TextAlign.center,),
            //FlatButton(child:Text('Restart Quiz!'),
            //textxoolor: Colors.blue,
            //onPressed:resetHandler,),],),
          )
        ],
      ),
    );
  }
}
