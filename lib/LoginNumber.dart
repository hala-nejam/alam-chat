// import 'package:alma/screens/login/widgt/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'Login2.dart';

class lognum extends StatefulWidget {
  const lognum({Key? key}) : super(key: key);

  @override
  _lognumState createState() => _lognumState();
}

class _lognumState extends State<lognum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage(
              'assets/images/Loginnew.png',
            ),
            fit: BoxFit.cover,
            width: double.infinity,
            height: 1000.h,
          ),
          Center(

              // ------------------------
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 127.h),
                  // ------------------------------------
                  Container(
                    margin: EdgeInsets.only(left: 106.w, right: 106.46.w),
                    child: Image.asset(
                      'assets/images/chat2.png',
                      width: 215.54.w,
                      height: 103.67.h,
                    ),
                  ),
// ----------------------------------
                  SizedBox(
                    height: 39.33.h,
                  ),
                  Text(
                    'أهلا ضيفنا',
                    style: TextStyle(
                        fontSize: 77.sp,
                        fontFamily: "Aviny",
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  // ---------------------------------------------------
                  // SizedBox(
                  //   height: 66.h,
                  // ),
                  Container(
                    height: 52.h,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 34.w),
                          width: 92.w,
                          height: 52.h,
                          child: TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              filled: true,
                              //<-- SEE HERE
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11),
                              ),
                              hintText: '+996',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        // ------------------------------------------------
                        Container(
                          width: 256.w,
                          height: 52.h,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              //<-- SEE HERE
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11),
                              ),
                              hintText: "رقم الهاتف",
                              suffixIcon: Icon(Icons.account_box_outlined),
                              // hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 16.h,
                  ),
                  // const Button(text: "oiioo"),
                  // -------------------------------------------------
                  Container(
                    width: 360.w,
                    height: 52.h,
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        filled: true,
                        //<-- SEE HERE
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                        hintText: 'كلمة المرور ',
                        suffixIcon: Icon(Icons.verified_user_outlined),
                        // prefixIcon: Icon(Icons.verified_user_outlined)
                        // hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 48.sp,
                  ),
                  // ---------------------------------------

                  Container(
                    width: 242.w,
                    height: 62.h,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffdd32ad),
                              Color(0xff20368a),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          // -----------------
                          borderRadius: BorderRadius.circular(11.r),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.57),
                                //shadow for button
                                blurRadius: 5) //blur radius of shadow
                          ]),
                      // --------------------------
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          onSurface: Colors.transparent,
                          shadowColor: Colors.transparent,
                          //make color or elevated button transparent
                        ),
                        onPressed: () {
                          print("You pressed Elevated Button");
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                              // top: 18,
                              // bottom: 18,
                              ),
                          child: Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: "29LT Bukra",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 16.sp,
                  ),
                  Text(
                    'هل نسيت كلمة المرور؟',
                    style: TextStyle(fontSize: 16.sp, color: Colors.white),
                  ),
                  // -------------------------------------------------------
                  SizedBox(
                    height: 107.h,
                  ),
                  Image(
                    width: 110.w,
                    height: 45.h,
                    image: AssetImage(
                      'assets/images/vector2.png',
                    ),
                  ),

                  // --------------------------------------------

                  SizedBox(
                    height: 11.h,
                  ),
                  Container(
                    width: 265.68.w,
                    height: 21.55.h,
                    margin: EdgeInsets.only(left: 90.w, right: 72.32.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 17.55.w),
                          child: Text(
                            'شروط الخصوصية',
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Almarai",
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          child: Container(
                            width: 1.63.w,
                            height: 21.55.h,
                            color: Colors.white,
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(left: 8.22.w),
                          child: Text(
                            'اتفاقية المستخدم',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: "Almarai",
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
