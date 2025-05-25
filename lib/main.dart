

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart' show quizFile;

void main(){
  runApp(mainFile());
}

class mainFile extends StatefulWidget {
  const mainFile({super.key});

  @override
  State<mainFile> createState() => _mainFileState();
}

class _mainFileState extends State<mainFile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: quizFile(),
    );
  }
}
