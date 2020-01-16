import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import "bmi_result.dart";
import 'package:bmi_calculator/components/bmi_calculator.dart';



enum Gender {male,female}
Color inActiveColor = Color(0xFF111328);
Color activeColor = Color(0xFF1D1E33);
int height = 180;
int weight = 60;
int age = 20;

class InputPage extends StatefulWidget {
  
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    Calculate calc = Calculate(height: height,weight: weight);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
         Expanded(
                    child: Row(
             children: <Widget>[
               Expanded(
                                child: ReusableCard(
                   onPress: (){
                     setState(() {
                       selectedGender = Gender.male;
                     });
                   },
                   myColor: selectedGender==Gender.male?activeColor:inActiveColor,
                   cardChild: IconContent(
                     icon: FontAwesomeIcons.mars,
                     label: "MALE",
                   ),
                 ),
               ),
               Expanded(
                                child: ReusableCard(
                   cardChild: IconContent(
                     icon: FontAwesomeIcons.venus,
                     label:"FEMALE"
                   ),
                   onPress: (){
                     setState(() {
                       selectedGender = Gender.female;
                     }
                     );
                   },
                   myColor: selectedGender==Gender.female?activeColor:inActiveColor,
                 ),
               ),
             ],
           ),
         ),
          Expanded(
            
            child: ReusableCard(
              myColor: inActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                    ),
                   
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: TextStyle(
                          fontSize: 50.0
                        ),
                       
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          fontSize: 25.0,
                         
                        ),
                        
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
           
            
          ),
          ),
             Expanded(
            child: Row(
              children: <Widget>[
               Expanded(child: ReusableCard(
                 myColor: inActiveColor,
                 cardChild: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Text("WEIGHT",
                     style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey
                     )
                     ),
                     SizedBox(height: 5.0,),
                     Text(weight.toString(),
                     style: TextStyle(
                       fontSize: 50.0,
                       fontWeight: FontWeight.bold
                     ),
                     ),
                     SizedBox(height: 20.0),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         FloatingActionButton(
                            heroTag: "btn1",
                           backgroundColor: Color(0xFF1D1E38),
                           onPressed: (){
                             setState(() {
                               weight -= 1;
                             });
                           },
                           child: Icon(Icons.remove,
                            color:Colors.white,
                            size: 50.0,)
                           ),
                         SizedBox(width: 20.0),
                         FloatingActionButton(
                            heroTag: "btn2",
                           backgroundColor: Color(0xFF1D1E38),
                           onPressed: (){
                             setState(() {
                               weight += 1;
                             });
                           },
                           child: Icon(Icons.add,
                           color:Colors.white,
                           size:50.0)
                           )

                     ],)
                   ],
                 ),
               )
               ),
                Expanded(
                  child: ReusableCard(
                  myColor: inActiveColor,
                  cardChild: 
                  Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Text("AGE",
                     style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey
                     )
                     ),
                     SizedBox(height: 5.0,),
                     Text(age.toString(),
                     style: TextStyle(
                       fontSize: 50.0,
                       fontWeight: FontWeight.bold
                     ),
                     ),
                     SizedBox(height: 20.0),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         FloatingActionButton(
                            heroTag: "btn3",

                           backgroundColor: Color(0xFF1D1E38),
                           onPressed: (){
                             setState(() {
                               age += 1;
                             });
                           },
                           child: Icon(Icons.add,
                            color:Colors.white,
                            size: 50.0,)
                           ),
                         SizedBox(width: 20.0),
                         FloatingActionButton(
                            heroTag: "btn4",
                           backgroundColor: Color(0xFF1D1E38),
                           onPressed: (){
                             setState(() {
                               age -= 1;
                             });
                           },
                           child: Icon(Icons.remove,
                           color:Colors.white,
                           size:50.0)
                           )

                     ],)
                   ],
                )
                )
                ),
           ],
         ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>
     Result(result: calc.getResult(),
     textResult: calc.getTextResult(),
     textAdvice: calc.getTextAdvice(),
     )
     ),
  );
          },
          child: Container(
            padding: EdgeInsets.all(18.0),
            color:  Color(0xFFEB1555),
            child: Text("CALCULATE",
            textAlign: TextAlign.center,
            style: TextStyle( 
              fontSize:40.0
            )
            ),
          ),
        )
         
        ],
      )
      
    );
  }
}