import 'package:flutter/material.dart';

class educationDetails extends StatelessWidget {
  const educationDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Color(0xff880e4f), Color(0xffffffff)]),
          ),
        ),
      ),
    );
  }
}
