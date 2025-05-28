import 'dart:math';

import 'quizdart.dart';

class QuestionBank{
  int count = 0;
  final Random random = Random();
  List<Questions> QuestionsCollection = [
    Questions('Q#1. Psychology is the scientific study of behavior and mental processes.', true),
    Questions('Q#2. Sigmund Freud is known for developing the theory of behaviorism.   ', false),

    Questions('Q#3.The amygdala is primarily responsible for processing emotions like fear.   ', true),
    Questions('Q#4. The conscious mind includes all thoughts and feelings we are unaware of.    ', true),
    Questions('Q#5. Classical conditioning was discovered by Ivan Pavlov.   ', false),
    Questions('Q#6. Cognitive psychology focuses on mental processes like memory and problem-solving.     ', true),
    Questions('Q#7. Phobias are irrational fears that can be treated with exposure therapy.   ', true),
    Questions('Q#8. The placebo effect has no impact on psychological research outcomes.   ', false),
    Questions('Q#9. Maslow’s hierarchy of needs includes physiological needs at the top level.     ', false),
    Questions('Q#10.  The bystander effect suggests people are less likely to help in a group setting.    ', true),

    Questions('Q#11.  Neurotransmitters are chemicals that transmit signals between neurons.    ', true),
    Questions('Q#12. The Hawthorne effect refers to behavior changes due to being observed.    ', true),
    Questions('Q#13.  B.F. Skinner is associated with operant conditioning.    ', true),
    Questions('Q#14.  The frontal lobe is primarily responsible for motor functions and decision-making.    ', true),
    Questions('Q#15.  Depression is caused solely by genetic factors.    ', false),
    Questions('Q#16.  The Stanford Prison Experiment demonstrated the power of situational roles..    ', true),
    Questions('Q#17.  Short-term memory can hold an unlimited amount of information.   ', false),
    Questions('Q#18.  The fight-or-flight response is triggered by the sympathetic nervous system.    ', true),
    Questions('Q#19.  Confirmation bias refers to seeking information that supports one’s beliefs.    ', true),
    Questions('Q#20.  The DSM-5 is used to diagnose physical health conditions.    ', false),


  ];


  String GetQuestion(){
    return QuestionsCollection[count].QuestionValue!;

  }

  bool GetAnswer(){
    return QuestionsCollection[count].AnswerKey!;
  }



  void NextQuestion(){
    if(count<QuestionsCollection.length){

      count++;
    }
  }

  bool CheckFinishQuestion(){
      if(count>=QuestionsCollection.length-1){
        return true;
      }
      else {
        return false;
      }
  }
  void Reset(){
    count=0;
  }



}