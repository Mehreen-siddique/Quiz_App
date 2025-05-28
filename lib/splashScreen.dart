import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart' show quizFile;

class Mycard extends StatefulWidget {
  const Mycard({super.key});

  @override
  State<Mycard> createState() => _MycardState();
}

class _MycardState extends State<Mycard> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 5),
            ()=> Navigator.pushReplacement(context,
            MaterialPageRoute(
                builder: (BuildContext context)
                =>quizFile()))

    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('QUIZ_APP', style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight:FontWeight.bold,


              ),),
              SizedBox(height: 20,),
              Center(
                child:
                Column(
                  children: [
                    SizedBox(height: 30,),
                    CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage('images/logo.png')),

                    SizedBox(height: 20,),
                    Text('A mobile or web-based application that allows users to create, take, and share interactive quizzes on various topics.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,

                        color: Colors.white,
                        fontWeight:FontWeight.bold,

                    ),),
                  ],
                ),
              ) ,



              SizedBox(height: 100,),
              CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 10,
              )
            ],

          ),
        ),


      ),
    );
  }
}
