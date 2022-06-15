import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world1/skill.dart';

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
                // 1st box starts-------------------------------------------------------
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
                            child: Container(
                                height: 200,
                                width: 180,
                                child: ListView(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hello There",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(255, 79, 27, 48),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Divider(color: Colors.black),
                                    Text(
                                      "I am a Sophomore at Dr B. C. Roy engineering college pursuing B.Tech. in INFORMATION TECHNOLOGY Engineering. ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ))),
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
                            child: Container(
                                height: 200,
                                width: 180,
                                child: ListView(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hello There",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(255, 79, 27, 48),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Divider(color: Colors.black),
                                    Text(
                                      "I am a Sophomore at Dr B. C. Roy engineering college pursuing B.Tech. in INFORMATION TECHNOLOGY Engineering. ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ))),
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
                            child: Container(
                                height: 200,
                                width: 180,
                                child: ListView(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hello There",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(255, 79, 27, 48),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Divider(color: Colors.black),
                                    Text(
                                      "I am a Sophomore at Dr B. C. Roy engineering college pursuing B.Tech. in INFORMATION TECHNOLOGY Engineering. ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ))),
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
                            child: Container(
                                height: 200,
                                width: 180,
                                child: ListView(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hello There",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(255, 79, 27, 48),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Divider(color: Colors.black),
                                    Text(
                                      "I am a Sophomore at Dr B. C. Roy engineering college pursuing B.Tech. in INFORMATION TECHNOLOGY Engineering. ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ))),
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
                            child: Container(
                                height: 200,
                                width: 180,
                                child: ListView(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hello There",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(255, 79, 27, 48),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Divider(color: Colors.black),
                                    Text(
                                      "I am a Sophomore at Dr B. C. Roy engineering college pursuing B.Tech. in INFORMATION TECHNOLOGY Engineering. ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ))),
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
                            child: Container(
                                height: 200,
                                width: 180,
                                child: ListView(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hello There",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(255, 79, 27, 48),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Divider(color: Colors.black),
                                    Text(
                                      "I am a Sophomore at Dr B. C. Roy engineering college pursuing B.Tech. in INFORMATION TECHNOLOGY Engineering. ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ))),
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
                            child: Container(
                                height: 200,
                                width: 180,
                                child: ListView(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hello There",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(255, 79, 27, 48),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Divider(color: Colors.black),
                                    Text(
                                      "I am a Sophomore at Dr B. C. Roy engineering college pursuing B.Tech. in INFORMATION TECHNOLOGY Engineering. ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ))),
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
                            child: Container(
                                height: 200,
                                width: 180,
                                child: ListView(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hello There",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(255, 79, 27, 48),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Divider(color: Colors.black),
                                    Text(
                                      "I am a Sophomore at Dr B. C. Roy engineering college pursuing B.Tech. in INFORMATION TECHNOLOGY Engineering. ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ))),
                      ],
                    )),
              ],
            ))
          ],
        ));
  }
}
