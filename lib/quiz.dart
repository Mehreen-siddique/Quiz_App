
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
  int totalMarks = 0;
  QuestionBank QA = QuestionBank();



  void QuizChecking( bool userSelectedAnswer){

  if(QA.GetAnswer()==userSelectedAnswer){
    Icons_List.add(Icon(Icons.check,
    color:Color(0Xfff64a6bd) ,
    ));
  marks=marks+2;
  }
  else if (QA.GetAnswer() != userSelectedAnswer){
  Icons_List.add( Icon(
  Icons.close,
  size: 30,
  color: Color(0Xfff90a8c3),

  ),);

  }
}


  void QuizStatus(bool userSelectedAnswer){
    if(QA.CheckFinishQuestion()==true){


    QuizChecking(userSelectedAnswer);
    totalMarks = Icons_List.length*2;
    Navigator.pushReplacement(context, 
    MaterialPageRoute(builder: (context)=>resultScreen(gotmarks: marks, totalQuizMarks: totalMarks))
    );
   /* showDialog(context: context, builder:(context)=>
        AlertDialog(
          title: Text("you reach to result."),
        ),
    ); */
    }
    else{
      QuizChecking(userSelectedAnswer);

       QA.NextQuestion();
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0Xfff64a6bd),
          title: Center(child: Text('$marks',style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold
          ),)),
        ),

        body:
        Padding(padding: EdgeInsets.all(20),
         child:
         Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(QA.GetQuestion()!,
               textAlign: TextAlign.center,
               style:

               TextStyle(

               fontSize: 30,
               fontWeight: FontWeight.bold,


             ),),
             SizedBox(height: 20,),
             ElevatedButton(
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Color(0Xfff64a6bd)
                 ),

                 onPressed: (){
                   setState(() {

                     QuizStatus(true);
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
                     backgroundColor: Color(0Xfffd7b9d5)
                 ),

                 onPressed: (){

                   setState(() {
                     QuizStatus(false);
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
