// import 'dart:html';
import 'dart:io';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_world1/contact.dart';
import 'package:path_provider/path_provider.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: skill(),
  ));
}

class skill extends StatefulWidget {
  const skill({Key? key}) : super(key: key);
  @override
  _skill createState() => _skill();
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(
        0, size.height); //start path with this if you are making at bottom
    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(
        size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}

class _skill extends State<skill> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                  color: Colors.pink[900]),
              child: Stack(
                children: [
                  Positioned(
                      top: 80,
                      left: 0,
                      child: Container(
                        height: 80,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            )),
                      )),
                  Positioned(
                    top: 100,
                    left: 20,
                    child: Center(
                        child: Text("My Skill",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 117, 16, 83)))),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.005,
            ),
            Expanded(
                child: ListView(
              children: [
                // 1st box starts-------about------------------------------------------------
                Container(
                    height: 250,
                    margin: const EdgeInsets.only(bottom: 18, top: 0),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 35,
                            left: 20,
                            child: Material(
                              child: Container(
                                height: 500.0,
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(0.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        offset: new Offset(-10.0, 10.0),
                                        blurRadius: 20.0,
                                        spreadRadius: 4.0),
                                  ],
                                ),
                              ),
                            )),
                        Positioned(
                            top: 0,
                            left: 30,
                            child: Card(
                                elevation: 10.0,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage("assets/image/java.png"),
                                      ),
                                    )))),
                        Positioned(
                          top: 25,
                          left: 200,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircularPercentIndicator(
                                    animation: true,
                                    animationDuration: 5000,
                                    radius: 45,
                                    lineWidth: 10,
                                    percent: 0.5,
                                    progressColor:
                                        Color.fromARGB(255, 136, 13, 120),
                                    backgroundColor:
                                        Color.fromARGB(255, 224, 139, 221),
                                    circularStrokeCap: CircularStrokeCap.round,
                                    center: const Text('55%',
                                        style: TextStyle(fontSize: 20)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                // 1st box ends-----------------------------------------------------------

                // 2nd box starts-----------------------------------------------------------
                Container(
                    height: 250,
                    margin: const EdgeInsets.only(bottom: 18, top: 25),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 35,
                            left: 20,
                            child: Material(
                              child: Container(
                                height: 500.0,
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(0.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        offset: new Offset(-10.0, 10.0),
                                        blurRadius: 20.0,
                                        spreadRadius: 4.0),
                                  ],
                                ),
                              ),
                            )),
                        Positioned(
                            top: 0,
                            left: 30,
                            child: Card(
                                elevation: 10.0,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage("assets/image/py.jpg"),
                                      ),
                                    )))),
                        Positioned(
                          top: 25,
                          left: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircularPercentIndicator(
                                animation: true,
                                animationDuration: 5000,
                                radius: 45,
                                lineWidth: 10,
                                percent: 0.4,
                                progressColor:
                                    Color.fromARGB(255, 136, 13, 120),
                                backgroundColor:
                                    Color.fromARGB(255, 224, 139, 221),
                                circularStrokeCap: CircularStrokeCap.round,
                                center: const Text('40%',
                                    style: TextStyle(fontSize: 20)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),

// 3rd start

                Container(
                    height: 250,
                    margin: const EdgeInsets.only(bottom: 18, top: 25),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 35,
                            left: 20,
                            child: Material(
                              child: Container(
                                height: 500.0,
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(0.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        offset: new Offset(-10.0, 10.0),
                                        blurRadius: 20.0,
                                        spreadRadius: 4.0),
                                  ],
                                ),
                              ),
                            )),
                        Positioned(
                            top: 0,
                            left: 30,
                            child: Card(
                                elevation: 10.0,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/image/flutter.png"),
                                      ),
                                    )))),
                        Positioned(
                          top: 25,
                          left: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircularPercentIndicator(
                                animation: true,
                                animationDuration: 5000,
                                radius: 45,
                                lineWidth: 10,
                                percent: 0.6,
                                progressColor:
                                    Color.fromARGB(255, 136, 13, 120),
                                backgroundColor:
                                    Color.fromARGB(255, 224, 139, 221),
                                circularStrokeCap: CircularStrokeCap.round,
                                center: const Text('60%',
                                    style: TextStyle(fontSize: 20)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),

// 4th start.............................................................................

                Container(
                    height: 250,
                    margin: const EdgeInsets.only(bottom: 18, top: 25),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 35,
                            left: 20,
                            child: Material(
                              child: Container(
                                height: 500.0,
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(0.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        offset: new Offset(-10.0, 10.0),
                                        blurRadius: 20.0,
                                        spreadRadius: 4.0),
                                  ],
                                ),
                              ),
                            )),
                        Positioned(
                            top: 0,
                            left: 30,
                            child: Card(
                                elevation: 10.0,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage("assets/image/html.png"),
                                      ),
                                    )))),
                        Positioned(
                          top: 25,
                          left: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircularPercentIndicator(
                                animation: true,
                                animationDuration: 5000,
                                radius: 45,
                                lineWidth: 10,
                                percent: 0.85,
                                progressColor:
                                    Color.fromARGB(255, 136, 13, 120),
                                backgroundColor:
                                    Color.fromARGB(255, 224, 139, 221),
                                circularStrokeCap: CircularStrokeCap.round,
                                center: const Text('94%',
                                    style: TextStyle(fontSize: 20)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),

// 5th start.................................................................................

                Container(
                    height: 250,
                    margin: const EdgeInsets.only(bottom: 18, top: 25),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 35,
                            left: 20,
                            child: Material(
                              child: Container(
                                height: 500.0,
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(0.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        offset: new Offset(-10.0, 10.0),
                                        blurRadius: 20.0,
                                        spreadRadius: 4.0),
                                  ],
                                ),
                              ),
                            )),
                        Positioned(
                            top: 0,
                            left: 30,
                            child: Card(
                                elevation: 10.0,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage("assets/image/css.png"),
                                      ),
                                    )))),
                        Positioned(
                          top: 25,
                          left: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircularPercentIndicator(
                                animation: true,
                                animationDuration: 5000,
                                radius: 45,
                                lineWidth: 10,
                                percent: 0.3,
                                progressColor:
                                    Color.fromARGB(255, 136, 13, 120),
                                backgroundColor:
                                    Color.fromARGB(255, 224, 139, 221),
                                circularStrokeCap: CircularStrokeCap.round,
                                center: const Text('35%',
                                    style: TextStyle(fontSize: 20)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),

// 6start...........................................................................................................................

                Container(
                    height: 250,
                    margin: const EdgeInsets.only(bottom: 18, top: 25),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 35,
                            left: 20,
                            child: Material(
                              child: Container(
                                height: 500.0,
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(0.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        offset: new Offset(-10.0, 10.0),
                                        blurRadius: 20.0,
                                        spreadRadius: 4.0),
                                  ],
                                ),
                              ),
                            )),
                        Positioned(
                            top: 0,
                            left: 30,
                            child: Card(
                                elevation: 10.0,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage("assets/image/Js.png"),
                                      ),
                                    )))),
                        Positioned(
                          top: 25,
                          left: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircularPercentIndicator(
                                animation: true,
                                animationDuration: 5000,
                                radius: 45,
                                lineWidth: 10,
                                percent: 0.25,
                                progressColor:
                                    Color.fromARGB(255, 136, 13, 120),
                                backgroundColor:
                                    Color.fromARGB(255, 224, 139, 221),
                                circularStrokeCap: CircularStrokeCap.round,
                                center: const Text('25%',
                                    style: TextStyle(fontSize: 20)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),

                // 7th

                Container(
                    height: 250,
                    margin: const EdgeInsets.only(bottom: 18, top: 25),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 35,
                            left: 20,
                            child: Material(
                              child: Container(
                                height: 500.0,
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(0.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        offset: new Offset(-10.0, 10.0),
                                        blurRadius: 20.0,
                                        spreadRadius: 4.0),
                                  ],
                                ),
                              ),
                            )),
                        Positioned(
                            top: 0,
                            left: 30,
                            child: Card(
                                elevation: 10.0,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/image/jQuery.png"),
                                      ),
                                    )))),
                        Positioned(
                          top: 25,
                          left: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircularPercentIndicator(
                                animation: true,
                                animationDuration: 5000,
                                radius: 45,
                                lineWidth: 10,
                                percent: 0.2,
                                progressColor:
                                    Color.fromARGB(255, 136, 13, 120),
                                backgroundColor:
                                    Color.fromARGB(255, 224, 139, 221),
                                circularStrokeCap: CircularStrokeCap.round,
                                center: const Text('20%',
                                    style: TextStyle(fontSize: 20)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),

// 8th start,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,

                Container(
                    height: 250,
                    margin: const EdgeInsets.only(bottom: 18, top: 25),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 35,
                            left: 20,
                            child: Material(
                              child: Container(
                                height: 500.0,
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(0.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        offset: new Offset(-10.0, 10.0),
                                        blurRadius: 20.0,
                                        spreadRadius: 4.0),
                                  ],
                                ),
                              ),
                            )),
                        Positioned(
                            top: 0,
                            left: 30,
                            child: Card(
                                elevation: 10.0,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/image/logodesign.png"),
                                      ),
                                    )))),
                        Positioned(
                          top: 25,
                          left: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircularPercentIndicator(
                                animation: true,
                                animationDuration: 5000,
                                radius: 45,
                                lineWidth: 10,
                                percent: 0.8,
                                progressColor:
                                    Color.fromARGB(255, 136, 13, 120),
                                backgroundColor:
                                    Color.fromARGB(255, 224, 139, 221),
                                circularStrokeCap: CircularStrokeCap.round,
                                center: const Text('80%',
                                    style: TextStyle(fontSize: 20)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return contact();
                      // print('object');
                    }));
                  },
                  child: Container(
                      child: Center(
                        child: Text(
                          ' Contact Me',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      height: 80,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(40, 136, 14, 79),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 74,
                              color: Color.fromARGB(90, 136, 14, 79),
                              offset: Offset(
                                37,
                                37,
                              ),
                            ),
                            BoxShadow(
                              blurRadius: 74,
                              color: Color(0xffffffff),
                              offset: Offset(
                                -37,
                                -37,
                              ),
                            ),
                          ],
                          gradient: LinearGradient(
                            stops: [0, 1],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(198, 136, 14, 79),
                              Color.fromARGB(255, 255, 255, 255)
                            ],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(
                            25,
                          )))),

                  // color: Colors.pink[900],
                )
              ],
            ))
          ],
        ));
  }
}
