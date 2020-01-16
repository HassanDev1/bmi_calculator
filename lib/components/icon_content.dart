import "package:flutter/material.dart";

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  

  IconContent({this.icon,this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,
        size: 80.0,),
        SizedBox(height: 20.0),
        Text(label, style: TextStyle(
          fontSize: 18.0,
        color: Colors.grey[600]),),
      ],
    );
  }
}