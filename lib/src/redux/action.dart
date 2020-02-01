import '../model/calculator.dart';

class Add{
  int val;

  Add(this.val);

  Calculator addNumber(Calculator prevState ,int val){
    prevState.value += val;
    return prevState;
  }
}

class Subtract{
  int val;

  Subtract(this.val);

  Calculator subtractNumber(Calculator prevState, int val){
    prevState.value -= val;
    return prevState;
  }
}