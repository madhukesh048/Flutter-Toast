import 'package:flutter/material.dart';
import 'package:fluttertoast/flutterToast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Toast Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlutterToast(),
    );
  }
}
