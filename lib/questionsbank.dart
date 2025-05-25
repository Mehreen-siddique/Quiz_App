import 'quizdart.dart';

class QuestionBank{
  int count = 0;
  List<Questions> QuestionsCollection = [
    Questions('Q#1. Psychology is the scientific study of behavior and mental processes.', true),
    Questions('Q#2. Sigmund Freud is known for developing the theory of behaviorism.   ', false),

    Questions('Q#3.The amygdala is primarily responsible for processing emotions like fear.   ', true),
    Questions('Q#4. The conscious mind includes all thoughts and feelings we are unaware of.    ', true),
    Questions('Q#5. Classical conditioning was discovered by Ivan Pavlov.   ', false),
    Questions('Q#6. The conscious mind includes all thoughts and feelings we are unaware of.     ', true),
    Questions('Q#7. Phobias are irrational fears that can be treated with exposure therapy.   ', true),
    Questions('Q#8. The placebo effect has no impact on psychological research outcomes.   ', false),
    Questions('Q#9. Maslow’s hierarchy of needs includes physiological needs at the top level.     ', false),
    Questions('Q#10.  The bystander effect suggests people are less likely to help in a group setting.    ', true),


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




}