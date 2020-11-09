import 'package:flutter/material.dart';
import './question.dart';

// void main() {
//   runApp(MyClass());
// }

void main() => runApp(MyClass());

class MyClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyClassState();
  }
}

class _MyClassState extends State<MyClass> {
  var _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('da chon');
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['Ban sinh ngay nao', 'Ban thich con  gi'];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Main'),
      ),
      body: Column(
        //chua danh sach cua cac widget
        children: [
          Question(questions[_questionIndex]),
          RaisedButton(
            onPressed: _answerQuestions,
            child: Text('answer 1'),
          ),
          RaisedButton(
            onPressed: () {
              print('ok 2');
            },
            child: Text('answer 2'),
            textColor: Colors.white,
          ),
          RaisedButton(
            onPressed: () => print('hihi ok 3'),
            child: Text('answer 3'),
          ),
        ],
      ),
    ));
  }
}
