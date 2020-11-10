import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
    var questions = [
      {
        'questionText': 'Hom nay la thu may',
        'answers': ['thu hai', 'thu ba', 'thu tu']
      },
      {
        'questionText': 'Con meo ban ten gi',
        'answers': ['Thu Thu', 'Meow', 'Ket']
      },
      {
        'questionText': 'COn vat ban yeu thich',
        'answers': ['Cho', 'Meo', 'Lon']
      },
      {
        'questionText': 'Nha ban o dau',
        'answers': ['Bac Giang', 'Ha Noi', 'Ha Giang']
      },
      {
        'questionText': 'Ca khong an muoi...',
        'answers': ['Ca uon', 'Ca thoi', 'Ca hong']
      },
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Main'),
      ),
      body: Column(
        //chua danh sach cua cac widget
        children: [
          Question(questions[_questionIndex]['questionText']),

          // 3 dau cham la lay gia tri cua list ra khoi danh sach, them chung vao mot sorrounding list
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestions, answer);
          }).toList()
        ],
      ),
    ));
  }
}
