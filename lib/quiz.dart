
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/resultscreen.dart' show resultScreen;
import 'questionsbank.dart';

void main(){
  runApp(quizFile());
}

class quizFile extends StatefulWidget {
  const quizFile({super.key});

  @override
  State<quizFile> createState() => _quizFileState();
}

class _quizFileState extends State<quizFile> {
  @override

  List<Icon> Icons_List = [];
  int marks=0;
  QuestionBank QA = QuestionBank();
  int totalMarks = 0;



  void QuizChecking( bool userSelectedAnswer){
  if(QA.GetAnswer()==userSelectedAnswer){
  marks=marks+5;
  }
  else{
  Icons_List.add( Icon(
  Icons.check,
  size: 30,
  color: Color(0XFFF90A8c3),

  ),);

  }
}


  void QuizStatus(bool userSelectedAnswer){
    if(QA.CheckFinishQuestion()==true){

    QuizChecking(userSelectedAnswer);
    totalMarks = Icons_List.length*5;
    Navigator.pushReplacement(context, 
    MaterialPageRoute(builder: (context)=>resultScreen(gotmarks: marks, totalQuizMarks: totalMarks))
    );
    }
    else{
      QuizChecking(userSelectedAnswer);

       QA.NextQuestion();
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(child: Text('$marks',style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold
          ),)),
        ),

        body:
        Padding(padding: EdgeInsets.all(20),
         child:Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(QA.GetQuestion(),
               textAlign: TextAlign.center,
               style:

               TextStyle(

               fontSize: 30,
               fontWeight: FontWeight.bold,


             ),),
             SizedBox(height: 20,),
             ElevatedButton(
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Color(0Xfff64A6BD)
                 ),

                 onPressed: (){
                   setState(() {

                     QuizStatus(true);
                     Icons_List.add( Icon(
                       Icons.check,
                       size: 30,
                       color: Color(0XFFF90A8c3),

                     ),);
                   });

              }
             , child: Text('TRUE', style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 30,
               color: Colors.white
               ),)
             ),
             SizedBox(height: 10,),
             ElevatedButton(
                 style: ElevatedButton.styleFrom(
                     backgroundColor: Color(0XfffD7B9D5)
                 ),

                 onPressed: (){

                   setState(() {
                     QuizStatus(false);

                     Icons_List.add( Icon(
                       Icons.close,
                       size: 30,
                       color: Color(0XFFF90A8c3),

                     ),);
                   });
                 }
                 , child: Text('False', style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 30,
                 color: Colors.white
             ),)
             ),

             SizedBox(height: 10,),
             SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(children: Icons_List,))
           ],
         ),
        ),


      ),
    );
  }
}
