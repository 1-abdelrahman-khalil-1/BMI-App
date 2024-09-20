import 'package:bmi_calc/Screens/Screen1/screen1.dart';
import 'package:flutter/material.dart';

class ThirdRow extends StatefulWidget {
  const ThirdRow({super.key});

  @override
  State<ThirdRow> createState() => _ThirdRowState();
}

class _ThirdRowState extends State<ThirdRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
                
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text("Weight",
                        style: TextStyle(fontSize: 20, color: Colors.white70)),
                    Text(
                      "${Weight.round()} kg",
                      style: const TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white10,
                          radius: 25,
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (Weight != 10) Weight--;
                                });
                              },
                              icon: const Icon(
                                Icons.remove,
                                size: 35,
                                
                              )),
                        ),
                        const SizedBox(width: 15),
                        CircleAvatar(
                          backgroundColor: Colors.white10,
                          radius: 25,
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  Weight++;
                                });
                              },
                              icon: const Icon(
                                Icons.add,
                                size: 35,
                              )),
                        )
                      ],
                    )
                  ],
                ))),
        Expanded(
            child: Container(
             
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text("Age",
                        style: TextStyle(fontSize: 20, color: Colors.white70)),
                    Text(
                      "$age",
                      style: const TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white10,
                          radius: 25,
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (age != 1) age--;
                                });
                              },
                              icon: const Icon(
                                Icons.remove,
                                size: 35,
                              )),
                        ),
                        const SizedBox( width: 15 ),
                        CircleAvatar(
                          backgroundColor: Colors.white10,
                          radius: 25,
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: const Icon(
                                Icons.add,
                                size: 35,
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