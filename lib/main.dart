import 'package:flutter/material.dart';
import 'package:simple_form/src/app.dart';
import 'package:redux/redux.dart';
import './src/model/calculator.dart';
import './src/redux/reducer.dart';

void main(){
  final Store<Calculator> store = Store<Calculator>(
    appReducer,
    initialState: Calculator()
  );
  runApp(new App(store : store));
}