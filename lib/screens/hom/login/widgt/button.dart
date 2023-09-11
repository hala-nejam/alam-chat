import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  const Button({ Key? key, required this.text }) : super(key: key);
final String text ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){},
      child: Container(width: 20,height: 20,color:Colors.red,
        child: Text('hala'),
    
      ),
    );
  }
}