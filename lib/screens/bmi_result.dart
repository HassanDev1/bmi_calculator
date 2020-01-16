
import "package:flutter/material.dart";

class Result extends StatelessWidget {
   
   final String textResult;
   final String textAdvice;
   final String result;
  Result({this.textResult,this.textAdvice,this.result});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI RESULT"),
      ),
      body: 
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       
        children: <Widget>[
          Expanded(
            child: Text("BMI RESULT",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50.0
            ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Card(
                color: Color(0xFF111328),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                    child: Text(textResult,
                    textAlign:TextAlign.center,
                    style:TextStyle(
                      color:Colors.green,
                      fontSize: 20.0,
                    )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(result,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.w900,
                     
                    ),
                    ),
                  ),
                  Text(textAdvice,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w900,
                  fontSize: 50.0,
                  )
              )
                

                ],
              ),
            ),
          )

        ],
      )
      
    );
  }
}