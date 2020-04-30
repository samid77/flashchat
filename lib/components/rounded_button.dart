import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  
  final Color colour;
  final String title;
  final Function onButtonPressed;

  RoundedButton({
    this.title, 
    this.colour, 
    @required this.onButtonPressed
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onButtonPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
