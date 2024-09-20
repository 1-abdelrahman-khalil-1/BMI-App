import 'package:bmi_calc/Screens/Screen1/Widgets/FirstRow.dart';
import 'package:bmi_calc/Screens/Screen1/Widgets/SecondRow.dart';
import 'package:bmi_calc/Screens/Screen1/Widgets/ThirdRow.dart';
import 'package:bmi_calc/Screens/Screen2/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

int i = 0, j = 0;
double height = 150;
double Weight = 50;
int age = 1;

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 13, 17, 38),
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 13, 17, 38),
      ),
      body: Column(
        children: [
          Firstrow(),
          Secondrow(),
          Thirdrow(),
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen2(
                    h: height,
                    w: Weight,
                  ),
                )),
            child: Container(
              width: double.infinity,
              height: 20,
              color: Colors.red,
              child: Center(
                  child: Text("Calculate",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold))),
            ),
          )
        ],
      ),
    );
  }
}
