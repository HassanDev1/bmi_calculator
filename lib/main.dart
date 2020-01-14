import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF080C22),
        scaffoldBackgroundColor: Color(0xFF080C22)

      ),
      home: InputPage(),
      
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        children: <Widget>[
         Expanded(
                    child: Row(
             children: <Widget>[
               ReusableCard(
                 
                 cardChild: IconContent(
                   icon: FontAwesomeIcons.mars,
                   label: "MALE",
                 ),
               ),
               ReusableCard(
                 cardIcon: FontAwesomeIcons.venus,
                 cardChild: IconContent(
                   icon: FontAwesomeIcons.venus,
                   label:"FEMALE"
                 ),
               ),
             ],
           ),
         ),
          ReusableCard(),
             Expanded(
            child: Row(
              children: <Widget>[
               ReusableCard(),
                ReusableCard(),
           ],
         ),
             )
         
        ],
      )
      
    );
  }
}

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

class ReusableCard extends StatelessWidget {
  
  final Widget cardChild;
  final IconData cardIcon;

  ReusableCard({this.cardChild,this.cardIcon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: cardChild,
         margin: EdgeInsets.all(15.0),
         decoration: BoxDecoration(
         color:Color(0xFF1D1F33),
         borderRadius: BorderRadius.circular(10.0)
        ),
        
        
      ),
    );
  }
}
