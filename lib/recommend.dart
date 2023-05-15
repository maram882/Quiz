import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz_app/last.dart';
import 'package:quiz_app/welcome.dart';

class Rec extends StatelessWidget {
  const Rec({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 50,),
              Text(
                "بعض النصائح تقدمها لك مجله شيزلونج",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 197,116,113)),
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Positioned(
                          child: Image.asset("assets/rec1.jpg",
                              height: size.height * 0.6, width: size.width * 0.6)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Positioned(
                          child: Image.asset("assets/rec2.jpeg",
                              height: size.height * 0.6, width: size.width * 0.6)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Positioned(
                          child: Image.asset("assets/rec3.jpeg",
                              height: size.height * 0.6, width: size.width * 0.6)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Positioned(
                          child: Image.asset("assets/rec4.jpeg",
                              height: size.height * 0.6, width: size.width * 0.6)),
                    )
                  ],
                ),
                
              ),
              SizedBox(height: 20,),
               Container(
                width: size.width * 0.4,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(fontSize: 15),
                      backgroundColor: Color.fromARGB(255, 197,116,113)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const last()));
                  },
                  child: const Text('إنتهاء')
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
