import 'package:flutter/material.dart';

class laucn_screen extends StatefulWidget {
  const laucn_screen({Key? key}) : super(key: key);

  @override
  State<laucn_screen> createState() => screenState();
}

class screenState extends State<laucn_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, '/menu_bottom_bar_screen');
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack
          (
      children: [
        const Image(
          image: AssetImage(
              'images/group-friends-lighting-lanterns_186382-8411 1.png'),
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Center(
          child: Text(
            'Flutter App',
            style: TextStyle(
              color: Colors.blue.shade800,
              fontSize: 26,
              fontFamily: 'Oswald',
              // fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.orange.shade300,
              letterSpacing: 2,
              wordSpacing: 10,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed,
              decorationColor: Colors.pink[400],
              decorationThickness: 2,
            ),
          ),
        ),
      ],
    ));
  }
}
