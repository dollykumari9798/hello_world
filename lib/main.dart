import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:hello_world1/educationDetails.dart';
// import 'package:gradient';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'D ~ Portfolio',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: 'Smooch'),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Color(0xff880e4f), Color(0xffffffff)]),
          ),
        ),
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image/bg.png'), fit: BoxFit.cover)),
          child: Column(
            children: <Widget>[
              // SizedBox(
              //   height: 15,
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('Flutter Developer',
                        textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        )),
                    TypewriterAnimatedText('Frontend-web Developer',
                        textStyle: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    TypewriterAnimatedText(' JAVA-programmer',
                        textStyle: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    TypewriterAnimatedText('Graphic Designer',
                        textStyle: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ],
                ),

                // child: Text(
                //   'Flutter Developer',
                //   style: TextStyle(
                //       color: Colors.black,
                //       fontSize: 30,
                //       fontWeight: FontWeight.bold),
                // )
              ),
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/image/last.jpeg'),
                // fit: BoxFit.fill,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Dolly kumari',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    shadows: [
                      Shadow(
                        color: Color.fromARGB(255, 165, 190, 204),
                        blurRadius: 10,
                      )
                    ],
                    letterSpacing: 2,
                    fontFamily: 'Smooch'),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(55.0, 0.0, 0.0, 0.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // FaIcon(FontAwesomeIcons.mailchimp),
                        // Icon(
                        //   Icons.mail_outline,
                        //   color: Color.fromARGB(255, 136, 14, 79),
                        //   size: 30,
                        // ),
                        Text('  Developer by Passion',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              fontFamily: 'Cookie',
                              letterSpacing: 2,
                              // shadows: [
                              //   Shadow(
                              //     color: Colors.blueAccent,
                              //     blurRadius: 10,
                              //   )
                              // ],
                            )),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Icon(
                        //   Icons.call,
                        //   color: Colors.pink[900],
                        //   size: 30,
                        // ),
                        Text('  Explorer by Soul',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              fontFamily: 'Cookie',
                              letterSpacing: 2,
                              // shadows: [
                              //   Shadow(
                              //     color: Color.fromARGB(255, 225, 235, 253),
                              //     blurRadius: 10,
                              //   )
                              // ],
                            )),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Icon(
                        //   Icons.supervised_user_circle,
                        //   color: Colors.pink[900],
                        //   size: 30,
                        // ),
                        Text('  Dreamer by Heart',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              fontFamily: 'Cookie',
                              letterSpacing: 2,
                              // shadows: [
                              //   Shadow(
                              //     color: Colors.blue,
                              //     blurRadius: 10,
                              //   )
                              // ],
                            ))
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Icon(
                        //   Icons.home,
                        //   color: Colors.pink[900],
                        //   size: 30,
                        // ),
                        // Text('  Full-Time',
                        //     style: TextStyle(
                        //       color: Colors.black,
                        //       fontWeight: FontWeight.bold,
                        //       fontSize: 15,
                        //       letterSpacing: 2,
                        //     ))
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 60,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return educationDetails();
                  }));
                },
                // child: Text(
                //   'Know More About Me',
                //   style: TextStyle(fontSize: 20, color: Colors.white),
                // ),
                child: Container(
                    child: Center(
                      child: Text(
                        'Know More About Me',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                    height: 80,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 242, 235, 233),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 74,
                            color: Color.fromARGB(90, 136, 14, 79),
                            offset: Offset(
                              15,
                              30,
                            ),
                          ),
                          BoxShadow(
                            blurRadius: 74,
                            color: Colors.white,
                            offset: Offset(
                              -30,
                              0,
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
          ),
        ),
      ),
    );
  }
}
