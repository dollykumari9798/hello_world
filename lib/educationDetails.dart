import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world1/skill.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: educationDetails(),
  ));
}

class educationDetails extends StatefulWidget {
  const educationDetails({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<educationDetails> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
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
                        // child: MaterialButton(
                        //   child: Text(
                        //     '⬅️',
                        //     style: TextStyle(color: Colors.white),
                        //   ),
                        //   onPressed: () {
                        //     Navigator.pop(context);
                        //   },
                        // ),
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
            // Expanded(
            //     child: ListView(
            //   children: [
            //     Container(
            //       margin: const EdgeInsets.only(bottom: 18, top: 25),
            //       height: 188,
            //       padding: EdgeInsets.only(left: 28, right: 28, bottom: 20),
            //       child: Container(
            //         decoration: BoxDecoration(
            //           color: Color(0xFf363f93),
            //           borderRadius: BorderRadius.only(
            //             bottomLeft: Radius.circular(88.0),
            //           ),
            //           // boxShadow: [
            //           //   BoxShadow(
            //           //       color: Color(0xFF363F93).withOpacity(8.3),
            //           //       offset: Offset(-18.8, 8.8),
            //           //       blurRadius: 20,
            //           //       spreadRadius: 40),
            //           // ],
            //         ),
            //         padding: const EdgeInsets.only(
            //           left: 32,
            //           top: 58.8,
            //           bottom: 58,
            //         ),
            //         child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: <Widget>[
            //               Text(
            //                 "THE BEST",
            //                 style: TextStyle(color: Colors.white, fontSize: 12),
            //               ), // Text
            //               const SizedBox(
            //                 height: 2,
            //               ),
            //               Text(
            //                 "Your life starts here",
            //                 style: TextStyle(
            //                     color: Colors.white,
            //                     fontSize: 22,
            //                     fontWeight: FontWeight.bold),

            MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return skill();
                }));
              },
              // child: Text(
              //   'Know More About Me',
              //   style: TextStyle(fontSize: 20, color: Colors.white),
              // ),
              child: Container(
                  child: Center(
                    child: Text(
                      ' my skills',
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
