
import "package:flutter/material.dart";

class ReusableCard extends StatelessWidget {
  final Widget cardChild;
  final Color myColor;
  final Function onPress;
  ReusableCard({this.cardChild,this.onPress,this.myColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        
        child: cardChild,
         margin: EdgeInsets.all(15.0),
         decoration: BoxDecoration(
         color:myColor,
         borderRadius: BorderRadius.circular(10.0)
        ),
        
        
      ),
    );
  }
}