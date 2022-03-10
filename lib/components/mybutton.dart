import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  Function() onTap;

 final String buttonText;
 MyButton({required this.buttonText,required this.onTap});
  @override
  Widget build(BuildContext context) {
   return ElevatedButton(
          child:  Text(buttonText),
          onPressed:onTap
        
        );
  }

  
}