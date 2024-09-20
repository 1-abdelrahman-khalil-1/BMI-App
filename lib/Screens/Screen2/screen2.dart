import 'package:bmi_calc/Screens/Screen1/screen1.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key, required this.h, required this.w});
  final double h, w;
  @override
  Widget build(BuildContext context) {
    double res = ((w * 10000) / (h * h));
    String status = "", about = "";
    if (res < 18.5) {
      status = "Underweight";
      about =
          "Your body weight is currently higher than the recommended weight. Consider some small changes such as taking the stairs over the elevator.";
    } else if (res < 25) {
      status = "Normal";
      about =
          "Your body weight is exactly where it should be, keep on keeping on!";
    } else if (res < 30) {
      status = "Overweight";
      about =
          "Your body weight is a bit lower than the recommended weight, treat yourself to your favorite food or try lifting weights to gain muscle mass.";
    } else {
      status = "Obese";
      about = "You are a fuckin cow, Bitch!";
    }
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 13, 17, 38),
      appBar: AppBar(
          leading: GestureDetector(
              onTap: () => Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen1(),
                  )),
              child: Icon(Icons.arrow_back, color: Colors.white)),
          title: Text(
            "BMI Calculator",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color.fromARGB(255, 13, 17, 38)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Your Results",
            style: TextStyle(
                color: Colors.white, fontSize: 50, fontWeight: FontWeight.w900),
          ),
          Container(
            width: 400,
            height: 500,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(status,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 0, 250, 8),
                        fontSize: 28,
                        fontWeight: FontWeight.w400)),
                Text("${res.toStringAsFixed(1)}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 120,
                        fontWeight: FontWeight.w800)),
                Text(
                  about,
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 28,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
