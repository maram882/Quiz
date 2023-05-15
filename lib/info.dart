import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz_app/welcome.dart';

class infoPage extends StatelessWidget {
  const infoPage({super.key});

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
            
            Positioned(
                child:
                    Image.asset("assets/logo.jpg", height: size.height * 0.4)),
            
            Text(
              " أهلًا بك في موقع الاختبارات النفسية الخاص بمجلة شيزلونج",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 82, 82, 82)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: size.width * 0.9,
              child: Text(
                "*إن المرض النفسي من القضايا الخاصة، التي يجب أن يتم نشر الوعي في المجتمع بشكل إيجابي ودقيق، وما ان نتحدث عن الاضطرابات النفسية تقفز في ذهنك تلك الصورة التي خلدها المجتمع عنها، ويعاني الكثير من الأشخاص من الأمراض النفسية مثل القلق والاكتئاب والتوتر والاضطرابات النفسية الأخرى، ويبحث الكثيرون عن طرق فعالة للتخلص من هذه الحالات.",
                maxLines: 7,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(255, 82, 82, 82)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: size.width * 0.9,
              child: Text(
                "*ولكي تتأكد من صحتك النفسية، تقدم لك مجلة 'شيزلونج' بعض الاختبارات النفسية التي تتيح لك قياس نسبة القلق، فرط الحركة بالاضافة الي اضطراب ما بعض الصدمة.",
                maxLines: 6,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(255, 82, 82, 82)),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: size.width * 0.4,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 15),
                    backgroundColor: Color.fromARGB(255, 197,116,113)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Welcome()));
                },
                child: const Text('ابدأ الاختبار')
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
