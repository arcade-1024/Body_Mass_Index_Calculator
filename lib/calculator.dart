import 'dart:math';
class CalculatorBrain{
  CalculatorBrain({this.weight,this.height});
  final int height;
  final int weight;
  double _bmi;
  String calculateBMI(){
    _bmi = weight/pow(height/100 , 2);
   return  _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi>=25){
      return 'Overweight';
    }else if(_bmi>18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }
  String getInterpretation(){
    if(_bmi>=25){
      return 'Your Weight is higher than the normal body weight. Excercise more & Eat less.';
    }else if(_bmi>18.5){
      return 'Your have a Normal body weight. Keep it up.';
    }else{
      return 'You have a lower than normal body weight. Start eating food instead of people\'s brain.' ;
    }
  }
}

