//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//a class called widebutton that can be used for constructing buttons
class WideButton extends StatelessWidget {
  //set the variables
  Color color;
  String buttonText;
  VoidCallback onPressed;
  WideButton(
      {required this.color, required this.buttonText, required this.onPressed});

  //build the button
  @override
  Widget build(BuildContext context) {
    //settings of the button
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      width: double.infinity,
      child: RawMaterialButton(
        elevation: 5,
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: this.onPressed,
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        fillColor: color,
      ),
    );
  }
}
