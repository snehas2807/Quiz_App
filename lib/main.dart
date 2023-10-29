import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/quiz.dart';
import 'result.dart';
// import 'package:first_app/questions.dart';

// void main()
// {
//   runApp(MyApp());

// }
void main() => runApp(MyApp()); //uper wale shorthand hai bass

class MyApp extends StatefulWidget {
  // var question = [
  //   {
  //     'questionText': 'What is your name',
  //     'answer': ['Akshat', 'Yash', 'Harsh', 'Shahvez'],
  //   },
  //   {
  //     'questionText': 'What is your favorite color',
  //     'answer': ['Blue', 'black', 'Green', 'yelow'],
  //   },
  // ];
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState(); //ye baad wali class to return kar rha hai, MyAppState ko connect kiya isse
  }
}

class _MyAppState extends State<
    MyApp> //<MyApp> dono classes to apse connect karne ke liye likhA hai
//_MyAppState me '_' add kiya taki koi aur file MyAppState use na kar sake varna wierd bugs aa skte hai
{
  var question = [
    {
      'questionText': 'Why you choose HIT ?',
      'answer': [
        {'text': 'Option bhi kya tha ', 'score': 10},
        {'text': 'HIT provide overall development', 'score': 0},
        {'text': 'Kuch to lena hi tha na', 'score': 0},
        {'text': 'HIT is one of the top college in India', 'score': 0}
      ],
    },
    {
      'questionText': 'Which is top college in westBengal ?',
      'answer': [
        {'text': 'Jadavpur', 'score': 10},
        {'text': 'HIT', 'score': 0},
        {'text': 'IEM', 'score': 0},
        {'text': 'BC ROY', 'score': 0}
      ],
    },
    {
      'questionText': 'Where HIT college of engineering is located ?',
      'answer': [
        {'text': 'Haldia', 'score': 10},
        {'text': 'Kolkata', 'score': 0},
        {'text': 'Delhi', 'score': 0},
        {'text': 'Ranchi', 'score': 0}
      ],
    },
    {
      'questionText': 'Who is the HOD of CSE-CS ?',
      'answer': [
        {'text': 'PJ', 'score': 0},
        {'text': 'AS', 'score': 0},
        {'text': 'SSM', 'score': 0},
        {'text': 'SS', 'score': 10}
      ],
    },
  ];
  var questionIndex = 0;
  var totalscore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalscore = 0;
    });
  }

  void _answerQuestion(int score) {
    totalscore = totalscore + score;
    setState(() {
      //SetState logic statement ko change karne ke liye sue kiya jata, isske andart bass logic stmt daalana hai
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
    if (questionIndex < question.length) {
      print('We have another question!');
    } else {
      print('No more questions!!');
    }
  }

  @override //overrride just makes the code cleaner, wo dikhta hai ki humne stateless widget ko override karke apna Widget bnaya joki waise bhi bnaya tha
  Widget build(BuildContext context) {
    // var question = [
    //   'What is your name',
    //   'whta is your age',
    // ];
    // questions =[]; //does not work if questions is a const
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My first App'),
            ),
            body: questionIndex < question.length
                ? Quiz(
                    question: question,
                    answerQuestion: _answerQuestion,
                    questionIndex: questionIndex)
                : Result(totalscore, resetQuiz)));
  }
}
