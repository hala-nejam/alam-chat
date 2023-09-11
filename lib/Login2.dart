import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'Dropdown.dart';
// import 'main.dart';
import 'LoginNumber.dart';
import 'Loginnew.dart';

class login2 extends StatefulWidget {
  const login2({Key? key}) : super(key: key);

  @override
  _login2State createState() => _login2State();
}

class _login2State extends State<login2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 428.w, height: 926.h,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xff9437b1),
            Color(0xff9437b1),
          ],
          // begin: Alignment.topLeft,
          // end: Alignment.bottomRight,
          // transform: GradientRotation(maath)
        )),

// -----------------------------------------------
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(width: 428.w,
                 // height: 926.h,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Color(0xff20368a),
                    Color(0xff6137a0),
                    Color(0xffdd32ad),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
                child: Column(
                  children: [
                    SizedBox(
                      height: 428.85.h,
                    ),

                   // ---------------------------------
                    Container(width:352.61.w,
                      height:56.3.h,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(stops: [0,1],
                              colors: [
                                Color(0xffDD32AD),
                                Color(0xff20368A),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,),
                            // -----------------
                            borderRadius: BorderRadius.circular(11.r),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                                  blurRadius: 5) //blur radius of shadow
                            ]
                        ),
                        // --------------------------
                        child:ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            onSurface: Colors.transparent,
                            shadowColor: Colors.transparent,
                            //make color or elevated button transparent
                          ),

                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => lognum()));
                          },


                          child: Padding(
                            padding:const EdgeInsets.only(
                              // top: 18,
                              // bottom: 18,
                            ),
                            child:Text("تسجيل الدخول",
                              style: TextStyle(fontSize: 22.sp,fontFamily: "29LT Bukra",
                              fontWeight: FontWeight.bold, ),),
                          ),
                        ),),
                    ),

                    // ---------------------------
                    SizedBox(height: 11.85.h,),
                    // ---------------------------------------
                    Container(margin: EdgeInsets.only(bottom: 20.w),
                      width:352.61.w,
                      height:56.3.h,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xffdd32ad),
                                Color(0xff20368a),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,),
                            // -----------------
                            borderRadius: BorderRadius.circular(11.r),
                            boxShadow: <BoxShadow>[
                              const BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                                  blurRadius: 5) //blur radius of shadow
                            ]
                        ),
                        // --------------------------
                        child:ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            onSurface: Colors.transparent,
                            shadowColor: Colors.transparent,
                            //make color or elevated button transparent
                          ),

                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => loginnew()));
                          },


                          child: Padding(
                            padding:EdgeInsets.only(
                              // top: 18,
                              // bottom: 18,
                            ),
                            child:Text("تسجيل ",
                              style: TextStyle(fontSize: 22.sp,fontFamily: "29LT Bukra",
                                fontWeight: FontWeight.bold, ),),
                          ),
                        ),),
                    ),
                    // -------------------------------------------



                  ],
                )),
            SizedBox(height:66.h,),

            // --------------------------------------------------------------------
            Container(
              child: Column(
                children: [
                  Container(

                    child: Text(
                      'التسجيل باستخدام',
                      style: TextStyle(
                          fontFamily: "Almarai", color: Colors.white, fontSize: 16.sp),
                    ),
                  ),
                  // ---------------------------------------
                  SizedBox(height: 18.h,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 61.w,
                          height: 61.h,
                          child: Image.asset('assets/images/google.png'),
                        ),
                        Container(
                          width: 61.w,
                          height: 61.h,
                          padding: EdgeInsets.only(
                            left: 13.81,
                          ),
                          child: Image.asset('assets/images/fa.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 80.h,),
                  // ---------------------------------------
                  Container(
                    width: 265.68.w,
                    height: 21.55.h,
                    margin: EdgeInsets.only(left: 90.w,right: 72.23.w,bottom: 42.45.h),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'شروط الخصوصية',
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Almarai",
                                color: Colors.white,
                                // text-align: center;
                                ),
                          ),
                        ),
                        SizedBox(
                          child: Container(
                           margin: EdgeInsets.only(left:17.55.w ,right:8.22.w ),
                            width: 1.63.w,
                            height: 21.55.h,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          child: Text(
                            'اتفاقية المستخدم',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: "Almarai",
                                color: Colors.white),
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
      ),
    );
  }
}
