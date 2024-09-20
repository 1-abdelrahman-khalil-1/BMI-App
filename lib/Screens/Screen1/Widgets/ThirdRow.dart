import 'package:bmi_calc/Screens/Screen1/screen1.dart';
import 'package:flutter/material.dart';

class Thirdrow extends StatefulWidget {
  const Thirdrow({super.key});

  @override
  State<Thirdrow> createState() => _ThirdrowState();
}

class _ThirdrowState extends State<Thirdrow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
                height: 190,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Weight",
                        style: TextStyle(fontSize: 20, color: Colors.white70)),
                    Text(
                      "${Weight.round()} kg",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white10,
                          radius: 30,
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (Weight != 10) Weight--;
                                });
                              },
                              icon: Icon(
                                Icons.remove,
                                size: 40,
                              )),
                        ),
                        SizedBox(width: 15),
                        CircleAvatar(
                          backgroundColor: Colors.white10,
                          radius: 30,
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  Weight++;
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                size: 40,
                              )),
                        )
                      ],
                    )
                  ],
                ))),
        Expanded(
            child: Container(
                height: 190,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Age",
                        style: TextStyle(fontSize: 20, color: Colors.white70)),
                    Text(
                      "$age",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white10,
                          radius: 30,
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (age != 1) age--;
                                });
                              },
                              icon: Icon(
                                Icons.remove,
                                size: 40,
                              )),
                        ),
                        SizedBox(width: 15),
                        CircleAvatar(
                          backgroundColor: Colors.white10,
                          radius: 30,
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                size: 40,
                              )),
                        )
                      ],
                    )
                  ],
                )))
      ],
    );
  }
}
