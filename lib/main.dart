import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/result.dart';
import 'quiz.dart';
import 'result.dart';

/*void main(){
  runApp(MyApp());
}*/
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  final _questions = const [
    {
      'questionText': 'What\'s your favorite Color ?',
      'answer':[
        {'text':'Black', 'score':10},
        {'text':'Red', 'score':5},
        {'text':'Green', 'score':3},
        {'text':'White', 'score':1}],
    },
    {
      'questionText':  'What\'s your favorite Animal?',
      'answer':[
        {'text':'Rabbit', 'score':3},
        {'text':'Snake', 'score':11},
        {'text':'Elephant', 'score':5},
        {'text':'Lion', 'score':9}],
    },
    {
      'questionText': 'What\'s your favorite cricketer?',
      'answer':[
        {'text':'Yuvraj', 'score':1},
        {'text':'Virat', 'score':1},
        {'text':'Sachin', 'score':1},
        {'text':'Dhoni', 'score':1}],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
       _questionIndex = 0;
       _totalScore = 0;
    });
  }
  void _answerQue(int score) {

     _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
       if(_questionIndex < _questions.length){
       print('we have more question !');
        }else{
         print('No more question !');
       }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length ?
            Quiz(
              answerQue: _answerQue,
              questionIndex: _questionIndex ,
              questions: _questions,)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
