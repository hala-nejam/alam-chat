import 'package:alma/end2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class end1 extends StatefulWidget {
  const end1({Key? key}) : super(key: key);

  @override
  _end2State createState() => _end2State();
}

class _end2State extends State<end1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage(
              'assets/images/end1.png',
            ),
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 310.h,
                ),
                Text(
                  'أوشكنا على الانتهاء',
                  style: TextStyle(fontSize: 60.sp,
                      color: Colors.white,fontFamily:"Aviny"
                      ,fontWeight: FontWeight.w400),
                ),
                Text(
                  'أدخل الرمز المكون من 6 أرقام',
                  style: TextStyle(fontSize: 18.sp, color: Colors.white,
                      fontWeight: FontWeight.w700,fontFamily: "Cairo"),
                ),
                SizedBox(height: 27.h),
                Container(
                  width: 347.w,
                  height: 52.h,
                  child: Row(
                    children: [
                      Container(
                        width: 52.w,
                        // margin: EdgeInsets.only(left: 41.w),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.white),
                              //<-- SEE HERE
                              borderRadius: BorderRadius.circular(11.r),
                            ),
                            filled: true,
                            fillColor: Color(0xfffcfbfb),
                            hintText: '1',

                            contentPadding: EdgeInsets.only(left: 19.w,right: 8.w,top: 8.h),
                            hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.sp,
                                fontFamily: "Cairo",color: Colors.black),
                          ),
                        ),
                      ),

                      // --------------------------------
                      Container(
                        width: 52.w,
                        margin: EdgeInsets.only(left: 7.w),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.white),
                              //<-- SEE HERE
                              borderRadius: BorderRadius.circular(11.r),
                            ),
                            filled: true,
                            fillColor: Color(0xfffcfbfb),
                            hintText: '2',contentPadding: EdgeInsets.only(left: 19.w,right: 8.w,top: 8.h),
                            hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.sp,
                                fontFamily: "Cairo",color: Colors.black),
                          ),
                        ),
                      ),
                      // ------------------------------------------
                      Container(
                        width: 52.w,
                        margin: EdgeInsets.only(left: 7.w),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.white),
                              //<-- SEE HERE
                              borderRadius: BorderRadius.circular(11.r),
                            ),
                            filled: true,
                            fillColor: Color(0xfffcfbfb),
                            hintText: '3',contentPadding: EdgeInsets.only(left: 19.w,right: 8.w,top: 8.h),
                            hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.sp,
                                fontFamily: "Cairo",color: Colors.black),
                          ),
                        ),
                      ),
                      // ------------------------------------------
                      Container(
                        width: 52.w,
                        margin: EdgeInsets.only(left: 7.w),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.white),
                              //<-- SEE HERE
                              borderRadius: BorderRadius.circular(11.r),
                            ),
                            filled: true,
                            fillColor: Color(0xfffcfbfb),
                            hintText: '4',contentPadding: EdgeInsets.only(left: 19.w,right: 8.w,top: 8.h),
                            hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.sp,
                                fontFamily: "Cairo",color: Colors.black),
                          ),
                        ),
                      ),
                      // ------------------------------------------
                      Container(
                        width: 52.w,
                        margin: EdgeInsets.only(left: 7.w),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.white),
                              //<-- SEE HERE
                              borderRadius: BorderRadius.circular(11.r),
                            ),
                            filled: true,
                            fillColor: Color(0xfffcfbfb),
                            hintText: '5',contentPadding: EdgeInsets.only(left: 19.w,right: 8.w,top: 8.h),
                            hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.sp,
                                fontFamily: "Cairo",color: Colors.black),
                          ),
                        ),
                      ),
                      // ------------------------------------------

                      Container(
                        width: 52.w,
                        margin: EdgeInsets.only(left: 7.w),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.white),
                              //<-- SEE HERE
                              borderRadius: BorderRadius.circular(11.r),
                            ),
                            filled: true,
                            fillColor: Color(0xfffcfbfb),
                            hintText: '6',contentPadding: EdgeInsets.only(left: 19.w,right: 8.w,top: 8.h),
                            hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.sp,
                                fontFamily: "Cairo",color: Colors.black),
                          ),
                        ),
                      ),
                      // ------------------------------------------
                    ],
                  ),
                ),
                SizedBox(height: 39.h,),

                Container(
                  width: 300.w,height: 52.h,
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
                          // BoxShadow(
                          //     color: Color.fromRGBO(0, 0, 0, 0.57),
                          //     //shadow for button
                          //     blurRadius: 5) //blur radius of shadow
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
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => end2()));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          // top: 18,
                          // bottom: 18,
                        ),
                        child: Text(
                          "تأكيد الرمز",
                          style: TextStyle(color: Colors.white,fontFamily: "Cairo",fontSize: 18.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 208.h,),
                Text('لقد نسيت كلمة المرور؟',style: TextStyle(color: Colors.white,
                    fontFamily: 'Almarai',
                fontSize:16.sp ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
