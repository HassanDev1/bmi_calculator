

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';


class Calculate {
  int weight;
  int height;

  double _bmiResult;
  Calculate({@required this.height,@required this.weight});
  
  String getResult(){
     _bmiResult = weight/pow(height/100, 2);
    return _bmiResult.toStringAsFixed(1);
  }

  String getTextResult(){
    if( _bmiResult>= 25){
      return "Over Weight!";
    }
    else if (_bmiResult>18.5){
      return "NORMAL";
    }
   
    else{
      return "UNDER WEIGHT";
    }
    
  }
  String getTextAdvice(){
    if (_bmiResult>=25){
      return "You need to hit the GYM cut some weight!";
    }
    else if(_bmiResult > 18.5){
      return "You have normal weight, Good Job!";
    }
    else{
      return "You need to eat a lot of junk food to gain weight";
    }

  }

}