import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/recommend.dart';
import 'package:quiz_app/welcome.dart';
import 'package:quiz_app/quiz_model_three.dart';




class QuizThree extends StatefulWidget {
  const QuizThree({super.key});

  @override
  State<QuizThree> createState() => _QuizThreeState();
}

class _QuizThreeState extends State<QuizThree> {
   List<Question> questionlist = getquestion();
  int CurrentQuestionIndex = 0;
  int Score = 0;
  Answer? selectedAnswer;
  @override
  Widget build(BuildContext context) {
return  Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 241, 250),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              const Text("اختبار اضطراب ما بعد الصدمه",
                  style: TextStyle(
                    color: Color.fromARGB(255, 82, 82, 82),
                    fontSize: 24,
                  )),
              questionwidget(),
              answerlist(),
              nextbutton(),
            ]),
          ),
        ),
      ),
    );
    
    
    }

    questionwidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${CurrentQuestionIndex + 1} / ${questionlist.length.toString()} السؤال",
          style: TextStyle(
            color: Color.fromARGB(255, 82, 82, 82),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.6,
          padding: EdgeInsets.all(28),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 120, 194, 252),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            questionlist[CurrentQuestionIndex].questionText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }

  answerlist() {
    return Column(
      children: questionlist[CurrentQuestionIndex]
          .answerlist
          .map(
            (e) => answerButton(e),
          )
          .toList(),
    );
  }

  Widget answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 35,
      child: ElevatedButton(
        child: Text(answer.answerText),
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            primary: isSelected ? Color.fromARGB(255, 186,225,255) : Colors.white,
            onPrimary: isSelected ? Color.fromARGB(255, 82, 82, 82)  : Colors.black),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect >0) {
              Score = Score + answer.isCorrect;
            }
            setState(() {
              selectedAnswer = answer;
            });
          }
        },
      ),
    );
  }

   nextbutton() {
    bool islastquestion = false;
    if (CurrentQuestionIndex == questionlist.length - 1) {
      islastquestion = true;
    }

    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 48,
      child: ElevatedButton(
        child: Text(islastquestion ? "Sumbit" : "التالي"),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: Color.fromARGB(111, 1, 23, 65),
          onPrimary: Colors.white,
        ),
        onPressed: () {
          if (islastquestion) {
            showDialog(context: context, builder: (_) => showScoreDialog());
          } else {
            setState(() {
              selectedAnswer = null;
              CurrentQuestionIndex++;
            });
          }
        },
      ),
    );
  }

   showScoreDialog() {
    bool ispassed = false;
    if (Score >0) {
      ispassed = true;
        if (Score <= 8) {
        String title = "تدل على وجود أعراض خفيفة جدًا أو عدم وجود أعراض لذا قد لا تعاني هذا الاضطراب";
        return AlertDialog(
            title: Text(
              title,
              style:
                  TextStyle(color: ispassed ? Colors.green : Colors.redAccent),
            ),
            content: ElevatedButton(
                child: const Text("التالي"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Rec()));
                  setState(() {
                    CurrentQuestionIndex = 0;
                    Score = 0;
                    selectedAnswer = null;
                  });
                }));
      }
      else if (Score >= 9 && Score <= 16) {
        String title = "اعراض بسيط لذا يجب استشارة طبيب";
        return AlertDialog(
            title: Text(
              title,
              style:
                  TextStyle(color: ispassed ? Colors.green : Colors.redAccent),
            ),
            content: ElevatedButton(
                child: const Text("التالي"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) =>Rec()));
                  setState(() {
                    CurrentQuestionIndex = 0;
                    Score = 0;
                    selectedAnswer = null;
                  });
                }));
      }
      else if (Score >= 17 && Score <= 32) {
        String title="اعراض متوسطة لذا يجب استشارة طبيب";
        return AlertDialog(
            title: Text(
              title,
              style:
                  TextStyle(color: ispassed ? Colors.green : Colors.redAccent),
            ),
            content: ElevatedButton(
                child: const Text("التالي"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Rec()));
                  setState(() {
                    CurrentQuestionIndex = 0;
                    Score = 0;
                    selectedAnswer = null;
                  });
                }));
      }
      else if (Score >= 32 && Score <= 48) {
        String title = "اعراض متوسطة الشدة لذا يجب استشارة طبيب";
        return AlertDialog(
            title: Text(
              title,
              style:
                  TextStyle(color: ispassed ? Colors.green : Colors.redAccent),
            ),
            content: ElevatedButton(
                child: const Text("التالي"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Rec()));
                  setState(() {
                    CurrentQuestionIndex = 0;
                    Score = 0;
                    selectedAnswer = null;
                  });
                }));
      }
       else if (Score >=49  && Score <= 64) {
        String title ="أعراض شديدة لذا يبدوا أنك تعاني بنسبة شديدة وننصحك بالمسارعة و مراجعة طبيب نفسي مختص";
        return AlertDialog(
            title: Text(
              title,
              style:
                  TextStyle(color: ispassed ? Colors.green : Colors.redAccent),
            ),
            content: ElevatedButton(
                child: const Text("التالي"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Rec()));
                  setState(() {
                    CurrentQuestionIndex = 0;
                    Score = 0;
                    selectedAnswer = null;
                  });
                }));
      }

    }

   }
}