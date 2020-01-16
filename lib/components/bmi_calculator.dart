

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';


class Calculate {
  int weight;
  int height;
  String textResult;
  String textAdvice;
  double _bmiResult;
  Calculate({@required this.height,@required this.weight, this.textAdvice,this.textResult});
  
  String getResult(){
     _bmiResult = weight/pow((height/100), 2);
    return _bmiResult.toStringAsFixed(1);
  }

}