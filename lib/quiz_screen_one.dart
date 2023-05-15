import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz_app/quiz_model_one.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/recommend.dart';
import 'package:quiz_app/welcome.dart';

class QuizOne extends StatefulWidget {
  const QuizOne({super.key});

  @override
  State<QuizOne> createState() => _QuizOneState();
}

class _QuizOneState extends State<QuizOne> {
  List<Question> questionlist = getquestion();
  int CurrentQuestionIndex = 0;
  int Score = 0;
  Answer? selectedAnswer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 230, 232),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              const Text("هل تعاني من القلق؟",
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
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          width: size.width * 0.6,
          padding: EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 167, 176),
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
      height: 48,
      child: ElevatedButton(
        child: Text(answer.answerText),
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            primary:
                isSelected ? Color.fromARGB(255, 245, 230, 232) : Colors.white,
            onPrimary: isSelected ? Color.fromARGB(255, 82, 82, 82) : Colors.black),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect > 0) {
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
    if (Score > 0) {
      ispassed = true;
      if (Score <= 4) {
        String title = "لا تعاني من قلق و الحمد لله";
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
      } else if (Score >= 5 && Score <= 9) {
        String title = "تعاني من قلق عام بسيط لذا ننصحك بمراجعة الطبيب";
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
      } else if (Score >= 10 && Score <= 14) {
        String title = "تعاني من قلق عام متوسط لذا ننصحك بمراجعة الطبيب";
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
      } else if (Score >= 15 && Score <= 21) {
        String title = "تعاني من قلق عام شديد لذا ننصحك بمراجعة الطبيب";
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
