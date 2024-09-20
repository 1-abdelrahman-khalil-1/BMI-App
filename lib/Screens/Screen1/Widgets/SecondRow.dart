import 'package:bmi_calc/Screens/Screen1/screen1.dart';
import 'package:bmi_calc/Screens/Screen1/Widgets/FirstRow.dart';
import 'package:flutter/material.dart';

class Secondrow extends StatefulWidget {
  const Secondrow({super.key});

  @override
  State<Secondrow> createState() => _SecondrowState();
}

class _SecondrowState extends State<Secondrow> {
  List gender = [Colors.pink, Colors.black];
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 150,
          width: 362,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white10, borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Text(
                "Height",
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
              Text(
                "${height.round()} cm",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              Slider(
                  value: height,
                  min: 100,
                  max: 200,
                  thumbColor: Colors.red,
                  activeColor: gender[i],
                  onChanged: (double x) {
                    setState(() {
                      height = x;
                      gender[i];
                    });
                  })
            ],
          ),
        ),
      ],
    );
  }
}
