import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onButtonPressed;
  final String buttonText;
  final Color buttonColor;
   CustomButton(
      {required this.buttonColor,required this.buttonText, required this.onButtonPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: buttonColor,
            minimumSize: const Size.fromHeight(50)),
        onPressed: onButtonPressed,
        
        child: Text(buttonText,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)));
  }
}
