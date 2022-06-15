import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                        child: Text("About Me",
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
              height: height * 0.02,
            ),
            Container(
                height: 450,
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
                              color: Color.fromARGB(255, 246, 239, 239),
                              borderRadius: BorderRadius.circular(0.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    offset: new Offset(-10.0, 10.0),
                                    blurRadius: 20.0,
                                    spreadRadius: 8.0),
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
                            ), // Rounded Rectangle Border
                            child: Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("assets/image/last.jpeg"),
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
                                      color: Color.fromARGB(255, 79, 27, 48),
                                      fontWeight: FontWeight.bold),
                                ),
                                // Text(
                                //   "Hello world",
                                //   style: TextStyle(
                                //       fontSize: 16,
                                //       color: Colors.grey,
                                //       fontWeight: FontWeight.bold),
                                // ),
                                Divider(color: Colors.black),
                                Text(
                                  "I am a Sophomore at Dr BC Roy engineering college pursuing B.Tech. in INFORMATION TECHNOLOGY Engineering. ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ), // TextStyle,Text
                              ],
                            ))),
                    Positioned(
                        top: 215,
                        left: 40,
                        child: Container(
                          height: 220,
                          width: 320,
                          child: Text(
                            'Being a technology enthusiast, I love exploring new technologies and leveraging them to solve real-life problems.I am a curious person prepared to dive deeper into the sea of Website and App Development ,UI/UX designing and explore various domains that would interest me during my Engineering College Days.I am on my journey to become a full-stack Web Developer. Currently, I am learning flutter Development.',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ))
                  ],
                )),
            //
            //               ),
            //             ]),
            //       ),
            //     ),
            //   ],
            // ))
          ],
        ));
  }
}
