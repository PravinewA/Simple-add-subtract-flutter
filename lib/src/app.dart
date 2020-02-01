import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:simple_form/src/model/calculator.dart';
import './screens/HomeScreen.dart';
import 'package:flutter_redux/flutter_redux.dart';

class App extends StatelessWidget {
  final Store<Calculator> store;

  App({@required this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
