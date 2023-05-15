import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz_app/welcome.dart';

class last extends StatelessWidget {
  const last({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Text(
                " انتظروا المزيد من الاختبارات النفسية فالعدد القادم من مجلة شيزلونج",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 29, 41, 59)),
              ),
              SizedBox(
                height: 20,
              ),
              Positioned(
                  child: Image.asset(
                "assets/logo2.jpg",
                height: size.height * 0.7,
              )),
              SizedBox(
                height: 20,
              ),
              Container(
                width: size.width * 0.4,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(20),
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(fontSize: 15),
                        backgroundColor: Color.fromARGB(255, 29, 41, 59)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Welcome()));
                    },
                    child: const Text('أعادة الاختبار')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
