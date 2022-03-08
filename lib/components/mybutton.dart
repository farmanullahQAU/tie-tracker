import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{

 final String buttonText;
 MyButton({required this.buttonText});
  @override
  Widget build(BuildContext context) {
   return ElevatedButton(
          child:  Text(buttonText),
          onPressed: () {},
        
        );
  }

  
}