import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class end2 extends StatefulWidget {
  const end2({Key? key}) : super(key: key);

  @override
  _end2State createState() => _end2State();
}

class _end2State extends State<end2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            image: AssetImage(
              'assets/images/end2.png',
            ),
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Center(
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 109.h,
                    ),
                    Container(width:98.42.w ,height: 103.67.h ,
                      margin: EdgeInsets.only(left: 180.w,
                          right: 149.58.w),
                      child: Image.asset(
                          'assets/images/Vector.png'),
                    ),
                    // ----------------------------------------
                    SizedBox(height: 0.33.h,),
                    Container(width:180.w ,height:79.h ,
                      margin: EdgeInsets.only(left: 145.w,
                    right: 124.w),
                      child: Text(
                        'تهانينا',
                        style: TextStyle(
                          fontSize: 43.sp,
                          fontFamily: 'Cairo',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Stack(children: [
                      SizedBox(
                        width: 428.w,
                        height: 500.h,
                        child: Image.asset('assets/images/cat.png'),
                      ),

                    Container(margin: EdgeInsets.only(top: 370.h,
                        left: 100.w, right: 49.w),
                     // margin: EdgeInsets.only(
                     //  ),
                      child: Text(
                        'لقد تم إنشاء الحساب بنجاح',
                        style: TextStyle(
                            fontSize: 22.sp,
                            fontFamily: 'Cairo',
                            color: Colors.white),
                      ),
                    )
                    ],  ),
                   
                  ],
                ),

                // SizedBox(height: 25.h,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
