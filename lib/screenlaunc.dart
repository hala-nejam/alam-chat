import 'dart:async';

import 'package:flutter/material.dart';

class screen extends StatefulWidget {
  const screen({Key? key}) : super(key: key);

  @override
  _screenState createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
        ()=>Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context)=>
            screen()
        ))
    );
  }
  Widget build(BuildContext context) {
    return Stack();
  }
}
