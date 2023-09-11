import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:alma/Login2.dart';
// import 'Login2.dart';
void main() {
  runApp(
    ScreenUtilInit(
        child: const MyApp(),
        designSize: const Size(428,926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            home: child,
             debugShowCheckedModeBanner: false,
          );
        }),
  );
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context)=>
                const login2()
            ))
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
    children: [
          const Image(
            image: AssetImage(
              'assets/images/Grouplogin.png',
            ),
            fit: BoxFit.fill,
            width: double.infinity,
          ),
    Center(
      child: Column(
        children: [
          SizedBox(height: 219.h,),
          Container(
              margin: EdgeInsets.only(left: 30.w),
              // width: 392.w,
              // height: 392.h,
              child:Container(
                child:
              Image.asset('assets/images/chat.png')
                ,)
    ),


          SizedBox(height: 200.h,),

          Container(
              child: Image.asset('assets/images/Groupalma.png')),
              

        ],
      ),
    ),
    ],

// -----------------------------------------------

    )
    );
  }
}



