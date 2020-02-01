import 'action.dart';
import '../model/calculator.dart';

Calculator appReducer(Calculator prevState, dynamic action){
  if(action is Add){
    return action.addNumber(prevState, action.val);
  }else if(action is Subtract){
    return action.subtractNumber(prevState, action.val);
  }
  return prevState;
}
