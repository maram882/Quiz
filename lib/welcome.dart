
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_screen_one.dart';
import 'package:quiz_app/quiz_screen_three.dart';
import 'package:quiz_app/quiz_screen_two.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 50,),
                Text(
                  "اختبارات ''شيزلونج'' النفسيه",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromARGB(255, 82, 82, 82)),
                ),
                Positioned(
                    child: Image.asset(
                  "assets/logo.jpg",
                  height: size.height * 0.4,
                )),
                 Text(
                  "",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromARGB(255, 82, 82, 82)),
                ),
                Container(
                  width: size.width * 0.6,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(15),
                        foregroundColor: Color.fromARGB(255, 82, 82, 82),
                        textStyle: const TextStyle(fontSize: 15),
                        backgroundColor: Color.fromARGB(255, 255, 179, 186)),
                    onPressed: () {
                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) => AlertDialog(
                                  content: Container(
                                    width: size.width * 0.5,
                                    child: const Text(
                                      "هذا الاختبار لا يشخص المرض لكنه مؤشر لبعض الأعراض، للتأكد بشكل قاطع من نتيجة أعراضك من فضلك قم بمشاركة النتائج مع أخصائي ملحوظة: نتائج هذا الاختبار خاصة بكل شخص ولا يمكن للآخرين الاطلاع عليها.",
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 82, 82, 82),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  
                                  actions: <Widget>[
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromARGB(
                                                255, 255, 179, 186)),
                                        child: const Text("بدأ الاختبار"),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const QuizOne()));
                                        }),
                                  ]));
                    },
                    child: const Text('اختبار القلق'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: size.width * 0.6,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(15),
                        primary: Color.fromARGB(255, 82, 82, 82),
                        textStyle: const TextStyle(fontSize: 15),
                        backgroundColor: Color.fromARGB(255, 186, 225, 255)),
                    onPressed: () {
                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) => AlertDialog(
                                  content: Container(
                                    width: size.width * 0.5,
                                    child: const Text(
                                      "هذا الاختبار لا يشخص المرض لكنه مؤشر لبعض الأعراض، للتأكد بشكل قاطع من نتيجة أعراضك من فضلك قم بمشاركة النتائج مع أخصائي ملحوظة: نتائج هذا الاختبار خاصة بكل شخص ولا يمكن للآخرين الاطلاع عليها.",
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 82, 82, 82),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromARGB(255, 186, 225, 255)),
                                        child: const Text("بدأ الاختبار"),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const QuizThree()));
                                        }),
                                  ]));
                    },
                    child: const Text('اختبار اضطراب ما بعد الصدمه'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: size.width * 0.6,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(15),
                        primary: Color.fromARGB(255, 82, 82, 82),
                        textStyle: const TextStyle(fontSize: 15),
                        backgroundColor: Color.fromARGB(255, 255, 223, 186)),
                    onPressed: () {
                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) => AlertDialog(
                                  content: Container(
                                    width: size.width * 0.5,
                                    child: const Text(
                                      "هذا الاختبار لا يشخص المرض لكنه مؤشر لبعض الأعراض، للتأكد بشكل قاطع من نتيجة أعراضك من فضلك قم بمشاركة النتائج مع أخصائي ملحوظة: نتائج هذا الاختبار خاصة بكل شخص ولا يمكن للآخرين الاطلاع عليها.",
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 82, 82, 82),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromARGB(255, 255, 223, 186)),
                                        child: const Text("بدأ الاختبار"),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const QuizTwo()));
                                        }),
                                  ]));
                    },
                    child: const Text('اختبار اضطراب فرط الحركه'),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
