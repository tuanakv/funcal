import 'package:flutter/material.dart';
Widget calcButton(String buttonText, Color buttonColor, void Function()? buttonPressed) {
    return Container (
      width: 75,
      height: buttonText == ''? 150 : 70,
      padding: const EdgeInsets.all(0),
      child: ElevatedButton(
        onPressed: buttonPressed,
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          backgroundColor: buttonColor     ),
          child: Text(buttonText, 
          style: const TextStyle(fontSize: 20, color: Colors.white)),
      )
    );
  }  
