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
   double  percentage = 0;
   String? FormatedPercentage;
  @override
   void initState() {
    // TODO: implement initState
    gmarks = widget.gotmarks;
    tmarks = widget.totalQuizMarks;

    percentage = ((gmarks / tmarks)*100) ;
    FormatedPercentage = percentage.toStringAsFixed(2);
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
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
              Text('You got $FormatedPercentage %',
                textAlign: TextAlign.center

                , style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 10,),
              Image(
                  image: AssetImage("images/1.jpg")),

              SizedBox(height: 10,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0Xfff64A6BD)
                  ),

                  onPressed: (){
                    setState(() {

                    });

                  }
                  , child: Text('RETRY', style: TextStyle(
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

                    });

                  }
                  , child: Text('Exit', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white
              ),)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
