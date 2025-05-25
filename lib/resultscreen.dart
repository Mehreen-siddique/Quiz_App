 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
 }


class resultScreen extends StatefulWidget {
  final dynamic gotmarks;

  final dynamic totalQuizMarks;

  const resultScreen({super.key,
    required this.gotmarks,
    required this.totalQuizMarks
  });

  @override
  State<resultScreen> createState() => _resultScreenState();
}

class _resultScreenState extends State<resultScreen> {
   int gmarks = 0;
   int tmarks = 0;
   int percentage = 0;
  @override
   void initState() {
    // TODO: implement initState
    gmarks = widget.gotmarks;
    tmarks = widget.totalQuizMarks;

    percentage = ((gmarks / tmarks)*100) as int;
    super.initState();
  // same as for other total marks then use it in text widget to sow marks.
  // this is the method sir do in the class.
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You Got marks $gmarks out of $tmarks',
                textAlign: TextAlign.center

                , style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),),
              Text('You got $percentage %',
                textAlign: TextAlign.center

                , style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                ),),
            ],
          ),
        ),
      ),
    );
  }
}
