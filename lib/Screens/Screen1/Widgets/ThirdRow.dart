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
                height: 161,
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
                height: 161,
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
                        SizedBox( width: 15 ),
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
/*
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
         home: Screen1());
  }
}
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
              height: 90,
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
                height: 200,
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
                height: 200,
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
 */