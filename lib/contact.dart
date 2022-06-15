import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world1/skill.dart';
import 'package:email_validator/email_validator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
// import 'env.dart';

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
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
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
                    child: Text("Contact Me",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 117, 16, 83)))),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Container(
          height: 450,
          child: Center(
            child: Container(
              height: 450,
              width: 400,
              margin: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 20,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 20,
              ),
              decoration: BoxDecoration(
                  color: Color.fromARGB(247, 252, 248, 248),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 5),
                        blurRadius: 10,
                        spreadRadius: 1,
                        color: Color.fromARGB(255, 159, 77, 141)!)
                  ]),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Contact Us',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(hintText: 'Name'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(hintText: 'Email'),
                      validator: (email) {
                        if (email == null || email.isEmpty) {
                          return 'Required*';
                        } else if (!EmailValidator.validate(email)) {
                          return 'Please enter a valid Email';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: messageController,
                      decoration: const InputDecoration(hintText: 'Message'),
                      maxLines: 5,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 45,
                      width: 110,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.pink[900],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40))),
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            final response = await sendEmail(
                                nameController.value.text,
                                emailController.value.text,
                                messageController.value.text);
                            ScaffoldMessenger.of(context).showSnackBar(
                              response == 200
                                  ? const SnackBar(
                                      content: Text('Message Sent!'),
                                      backgroundColor: Colors.green)
                                  : const SnackBar(
                                      content: Text('Failed to send message!'),
                                      backgroundColor: Colors.red),
                            );
                            nameController.clear();
                            emailController.clear();
                            messageController.clear();
                          }
                        },
                        child:
                            const Text('Send', style: TextStyle(fontSize: 16)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: height * 0.02,
        ),
      ]),
    );
  }
}

Future sendEmail(String name, String email, String message) async {
  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  final response = await http.post(url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'service_id': 'service_sq1p9jp',
        'template_id': 'template_fdf11bh',
        'user_id': 'xUmKE6cCOVXTkFDQG',
        'template_params': {
          'from_name': name,
          'from_email': email,
          'message': message,
        }
      }));
  return response.statusCode;
}
