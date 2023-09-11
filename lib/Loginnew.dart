import 'package:alma/end1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:datepicker_dropdown/datepicker_dropdown.dart';

import 'Dropdown.dart';

class loginnew extends StatefulWidget {
  const loginnew({Key? key}) : super(key: key);

  @override
  _loginnewState createState() => _loginnewState();
}

class _loginnewState extends State<loginnew> {
  var cbvalue = false;

  List list1 = ['الدولة', 'فلسطين', 'مصر', 'ليبيا'];
  String Selcted = 'الدولة';
  String dropdownValue = 'Dog';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image(
              image: AssetImage(
                'assets/images/Grouploginnew.png',
              ),
              fit: BoxFit.cover,
              width: double.infinity,
              height: 1000.h,
            ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 32.5.w),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 41.h),
                      child: Image.asset(
                        'assets/images/iconuser.png',
                        width: 108.w,
                        height: 108.w,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 32.h),
                      child: Text(
                        'تسجيل ضيف جديد',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: "29LT Bukra",
                            color: Colors.white),
                      ),
                    ),
                    // -----------------------------------------------------
                    Container(
                      margin: EdgeInsets.only(top: 64.h),
                      child: Row(
                        children: [
                          Container(
                            width: 175.35.w,
                            height: 39.h,
                            child: TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(11.0),
                                ),
                                filled: true,
                                fillColor: Color(0xfffcfbfb),
                                hintText: 'الاسم الثاني ',
                              ),
                            ),
                          ),
                          Container(
                            width: 175.35.w,
                            height: 39.h,
                            padding: EdgeInsets.only(left: 9.29.w),
                            child: TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(11.0),
                                ),
                                filled: true,
                                fillColor: Color(0xfffcfbfb),
                                // labelText: 'كلمة فوق المربع',
                                hintText: 'الاسم الأول',
                                // hintStyle: TextStyle(),
                                // hintTextStyle: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    // ---------------------------------------------------------
                    // class Dropdown implements loginnew{}
                    // -----------------------------------------------
                    Container(
                      // width: 360.w,
                      height: 70.h,
                      padding: EdgeInsets.only(
                          left: 8.w, right: 12.w, top: 7.h, bottom: 6.h),
                      decoration: BoxDecoration(
                        // border: Border.all(width: 5, color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(11.r)),
                        color: Colors.white, //<-- SEE HERE
                      ),
                      child: Row(
                        children: [
                           Expanded(
              child: DateTimeDropdownWidget(
                valueTextStyle: const TextStyle(),
                valuePaddingOut: const EdgeInsets.only(left: 5),
                initialDay: 1,
                initialMonth: 1,
                initialYear: 2000,
                boxDecoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.white38),
                  borderRadius: BorderRadius.circular(7),
                ),
                underlineColor: Colors.transparent,//الخط يروح
                onDayChanged: (int? day) {
                  print('Selected Day: $day');
                },
                onMonthChanged: (int? month) {
                  print('Selected Month: $month');
                },
                onYearChanged: (int? year) {
                  print('Selected Year: $year');
                },
              ),
            ),
                          // -------------------------------------
                          Container(
                            child: Text(
                              "تاريخ الميلاد",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "29LT Bukra",
                                  color: Colors.black,
                                  backgroundColor: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),

                          //       // ----------------------------
                        ],
                      ),
                    ),

                    // --------------------------------------------------------------------
                    Container(
                      width: 360.w,
                      height: 52.h,
                      margin: EdgeInsets.only(top: 11),
                      decoration: BoxDecoration(
                        // border: Border.all(width: 5, color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(11.r)),
                        color: Colors.white,
                         //<-- SEE HERE
                      ),
                     //<-- SEE HERE
                            child: DropdownButton(
                              hint:Text('الدولة',style: TextStyle(fontSize: 18.sp),textAlign:TextAlign.right) ,
                              items: list1.map((list) {
                                return DropdownMenuItem(
                                    value: list, child: Text(list));
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  // Selcted = value;
                                });
                              },
                            ),

                    ),
                    // -----------------------------------------------

               
                    Container(
                      margin: EdgeInsets.only(top: 11.h),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            width: 92.w,
                            height: 52.h,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 3, color: Colors.white),
                                    borderRadius: BorderRadius.circular(11.r),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xfffcfbfb),
                                  hintText: '+966'),
                            ),
                          ),
                          Container(
                            width: 258.w,
                            height: 52.h,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 3, color: Colors.white),
                                    borderRadius: BorderRadius.circular(11.r),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xfffcfbfb),
                                  hintText: "رقم الهاتف"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // ---------------------------------------------------------------
                    Container(
                      width: 360.w,
                      height: 52.h,
                      margin: EdgeInsets.only(top: 11.h),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.white),
                              borderRadius: BorderRadius.circular(11.r),
                            ),
                            filled: true,
                            fillColor: Color(0xfffcfbfb),
                            hintText: 'كلمة المرور'),
                          // IconButton(
                          //   icon: const Icon(
                          //     Icons.remove_red_eye_sharp,
                          //   ),
                          //   onPressed: () {
                          //     // Scaffold.of(context).openDrawer();
                          //   },)
                      ),
                    ),
                    Container(
                      width: 360.w,
                      height: 52.h,
                      margin: EdgeInsets.only(top: 11.h),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          // labelText: 'Enter Number',
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.white),
                              borderRadius: BorderRadius.circular(11.r),
                            ),
                            filled: true,
                            fillColor: Color(0xfffcfbfb),
                            hintText: 'تأكيد كلمة المرور',
                          hintStyle: TextStyle(),
                        ),
                      ),
                    ),
                    // -------------------------------------------------------
                    Container(
                      margin: EdgeInsets.only(top: 11.h),
                      child: Row(
                        children: [
                          Container(
                            width: 106.72.w,
                            height: 36.h,
                            child: Row(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.white),
                                  onPressed: () {},
                                  child: Row(
                                    children: [

                                  Container(
                                  child: Text(
                                  'أنثى',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.sp),
                                  ),
                      ),
                                      Container(
                                        child: Icon(
                                          Icons.female_outlined,
                                          color: Colors.pinkAccent,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          // -------------------------------------------------
                          Container(
                            width: 106.72.w,
                            height: 36.h,
                            margin: EdgeInsets.only(left: 7.w),
                            child: Row(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.white),
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          'ذكر',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.sp),
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.male_outlined,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          // ----------------------------------------------------
                          Container(
                            width: 129.w,
                            height: 36.h,
                            margin: EdgeInsets.only(left: 9.38.w),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white),
                              onPressed: () {},
                              child: Text(
                                'اختر الجنس',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 16.sp),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 43.h,),
                    // ---------------------------------------------------------
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              // width:
                              // 346.64.w,
                              child: Text(
                                'إذا قمـت بإدخـال البيانـات فهـذا يعنـي أنـك توافق علـى كـافة الشـروط داخــل التطبيــق',
                                style: TextStyle(color: Colors.white),
                                maxLines: 2,
                              ),
                            ),
                          ),

                          Container(
                            child: Checkbox(
                                checkColor: Colors.white,
                                value: cbvalue,
                                onChanged: (value) {
                                  setState(() {
                                    cbvalue = value!;
                                  });
                                }),
                          ),
                        ],
                      ),
                    ),
                    // --------------------------------
                    SizedBox(height: 27.h,),

                    Container(
                      margin: EdgeInsets.only(top: 27.h),
                        width: 300.w,
                        height: 52.h,
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => end1()));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                              // top: 18,
                              // bottom: 18,
                            ),
                            child: Text(
                              "متابعة",
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontFamily: "29LT Bukra",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
