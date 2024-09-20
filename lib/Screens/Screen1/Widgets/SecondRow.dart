import 'package:bmi_calc/Screens/Screen1/screen1.dart';
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
   
    return Container(
      
      width: double.infinity,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white10,
           borderRadius: BorderRadius.circular(10)
           ),
      child: Column(
        children: [
          const Text(
            "Height",
            style: TextStyle(color: Colors.white70, fontSize: 20),
          ),
          Text(
            "${height.round()} cm",
            style: const TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
          Slider(
              value: height,
              min: 100,
              max: 200,
              thumbColor: Colors.indigo,
              activeColor: gender[i],
              onChanged: (double x) {
                setState(() {
                  height = x;
                  
                });
              })
        ],
      ),
    );
  }
}
