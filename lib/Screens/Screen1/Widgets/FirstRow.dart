import 'package:bmi_calc/Screens/Screen1/screen1.dart';
import 'package:flutter/material.dart';

class Firstrow extends StatefulWidget {
  const Firstrow({super.key});

  @override
  State<Firstrow> createState() => _FirstrowState();
}

class _FirstrowState extends State<Firstrow> {
  List x = [Colors.white10, Colors.blueAccent];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                i = (i + 1) % 2;
                if (j == 1 && i == 1) j = 0;
              });
            },
            child: Container(
                margin: EdgeInsets.all(10),
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: x[i],
                ),
                child: Icon(
                  Icons.male,
                  size: 150,
                )),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                j = (j + 1) % 2;
                if (j == 1 && i == 1) i = 0;
              });
            },
            child: Container(
                height: 150,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: x[j],
                ),
                child: Icon(
                  Icons.female,
                  size: 150,
                  color: Colors.pink,
                )),
          ),
        )
      ],
    );
  }
}
