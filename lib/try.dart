import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          'D- Portfolio ',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: 'Smooch'),
        ),
        backgroundColor: Colors.pink[900],
      ),
      body: Column(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Text(
                'Flutter Developer',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/image/my_pic.jpg')),
          SizedBox(
            height: 10,
          ),
          Text(
            'Dolly kumari',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
                letterSpacing: 2,
                fontFamily: 'Smooch'),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FaIcon(FontAwesomeIcons.mailchimp),
                  // Icon(
                  //   Icons.mail_outline,
                  //   size: 30,
                  // ),
                  Text('  rppandey9798@gmail.com')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.contact_phone,
                    size: 30,
                  ),
                  Text('  911***2147')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.supervised_user_circle,
                    size: 30,
                  ),
                  Text('  Developer')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.home,
                    size: 30,
                  ),
                  Text('  Full-Time')
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
