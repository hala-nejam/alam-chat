import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Login1.pan"),
                fit: BoxFit.cover
            )
        ),
        // ------------------------
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child: Image.asset('assets/images/chat.png'),),
              Container(child: Text('أهلا ضيفنا',style: TextStyle(fontSize:77 ,fontFamily:"Aviny" ),),),
              Container(child: Row(
                children: [
                  Container(child: Align(
                    alignment: Alignment.bottomLeft,
                    child: FloatingActionButton.extended(

                        onPressed: (){},
                        label: Text('رقم الهاتف')),
                  ),),

                ],
              ),),
            ],
          ),
        ),
      ),
    );

  }
}