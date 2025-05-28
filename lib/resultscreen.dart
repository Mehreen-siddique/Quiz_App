 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz/quiz.dart' show quizFile;

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
   var gmarks = 0;
   var tmarks = 0;
   double  percentage = 0;
   String? formatedPercentage;
   String? selectedImage;


   List<String> Image_List = [
    'images/average.webp',
     'images/high.jpg',
     'images/low.png',
   ];
   
  @override
   void initState() {
    super.initState();
    // TODO: implement initState
    gmarks = widget.gotmarks;
    tmarks = widget.totalQuizMarks;

    percentage = ((gmarks / tmarks)*100) ;
    formatedPercentage = percentage.toStringAsFixed(2);

    if(percentage <= 50){
      selectedImage = Image_List[0];

    } else if (percentage > 50 && percentage <= 80){
      selectedImage = Image_List[1];

    } else{
      selectedImage = Image_List[2];
    }
    


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
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
              Text('You got $formatedPercentage %',
                textAlign: TextAlign.center

                , style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold



                ),),



              SizedBox(height: 10,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0Xfff64a6bd)
                  ),

                  onPressed: (){
                    setState(() {

                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => quizFile())
                      );
                    });

                  }
                  , child: Text('RETRY', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white
              ),)
              ), // retry button

              SizedBox(height: 10,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0Xfffd7b9d5)
                  ),

                  onPressed: (){
                    setState(() {
                      showDialog(context: context, builder:(context)=>
                          AlertDialog(
                            title: Text("Finish Quiz."),
                          ),
                      );
                      SystemNavigator.pop();
                    });

                  }
                  , child: Text('Exit', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white
              ),)
              ),

              SizedBox(height: 15,),
              Image(
                  height: 200,
                  width: 200,
                  image: AssetImage(selectedImage!)),

            ],
          ),
        ),
      ),
    );
  }
}

