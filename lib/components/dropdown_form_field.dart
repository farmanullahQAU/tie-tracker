import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DropDownField extends StatelessWidget {
  final String hintText;

  final Function onChanged;
  final List<String> items;
  const DropDownField({Key? key,required this.items,required this.hintText,required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DropdownButtonHideUnderline(
      child: DropdownButtonFormField(

        
      items: items.map((String category) {
      return new DropdownMenuItem(
        
        value: category,
        child: Row(
          children: <Widget>[
       
            Text(category),
          ],
         )
        );
       }).toList(),
       onChanged:(value)=>onChanged(value),
  
     decoration: InputDecoration(
       hintText: hintText,
          filled: true,
          // fillColor: bgColor,
          // hoverColor: bgColor,
    
          //  helperText: 'Helper text',
        ),
    ));
  }
}