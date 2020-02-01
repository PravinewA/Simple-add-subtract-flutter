import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_form/src/model/calculator.dart';
import '../redux/action.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController myController1 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic redux App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 80,
              child: TextField(
                controller: myController1,
                keyboardType: TextInputType.number,
              ),
            ),
            StoreConnector<Calculator, int>(
              converter: (store) => store.state.value,
              builder: (context, value) {
                return Container(
                  width: 80,
                  child: Text(
                    '$value',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                  ),
                );
              }
            ),
            StoreConnector<Calculator, VoidCallback>(
              converter: (store){
                return ()=> store.dispatch(Add(int.parse(myController1.text)));
              },
              builder: (context, add) {
                return CupertinoButton(
                  child: Text("Add"),
                  onPressed: (){
                    add();
                    myController1.clear();
                    },
                );
              }
            ),
            StoreConnector<Calculator, VoidCallback>(
              converter: (store){
                return ()=> store.dispatch(Subtract(int.parse(myController1.text)));
              },
              builder: (context, subtract) {
                return CupertinoButton(
                  child: Text("Subtract"),
                  onPressed: (){
                    subtract();
                    myController1.clear();
                  },
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}

int add(a, b) {
  return a + b;
}

int subtract(a, b) {
  return a - b;
}
