import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz_app/quiz_model_two.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/recommend.dart';
import 'package:quiz_app/welcome.dart';


class QuizTwo extends StatefulWidget {
  const QuizTwo({super.key});

  @override
  State<QuizTwo> createState() => _QuizTwoState();
}

class _QuizTwoState extends State<QuizTwo> {
  List<Question> questionlist = getquestion();
  int CurrentQuestionIndex = 0;
  int Score = 0;
  Answer? selectedAnswer;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 237, 225),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              const Text("اختبار اضطراب فرط الحركة",
                  style: TextStyle(
                    color: Color.fromARGB(255, 82, 82, 82),
                    fontSize: 30,
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
    Size size = MediaQuery.of(context).size;

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
          width: size.width * 0.6,
          padding: EdgeInsets.all(28),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 248, 198, 140),
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
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 35,
      child: ElevatedButton(
        child: Text(answer.answerText),
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            primary: isSelected ? Color.fromARGB(255, 247, 231, 214) : Colors.white,
            onPrimary: isSelected ? Color.fromARGB(255, 82, 82, 82) : Colors.black),
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
      if (Score <= 3) {
        String title = "انت لا تعاني من فرط الحركه";
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
      else if (Score >= 4 && Score <= 6) {
        String title = "تدل على وجود أعراض خفيفة جدًا لذا أنت قد لا تعاني";
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
      else if (Score >= 7 && Score <= 12) {
        String title = "متوسطة لذا يبدو أنك قد تعاني من هذاالاضطراب بنسبة متوسطة وننصحك بمراجعة طبيب نفسي مختص";
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
                }),);
      }
      else if (Score >= 13 && Score <= 36) {
        String title ="متوسطة الشدة لذا يبدوا أنك تعاني من هذا الاضطراب بنسبة متوسطة الشدة وننصحك بالمسارعة و مراجعة طبيب نفسي مختص";
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
       else if (Score >= 37 && Score <= 48) {
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