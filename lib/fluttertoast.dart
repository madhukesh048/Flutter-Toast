import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class FlutterToast extends StatefulWidget {
  @override
  _FlutterToastState createState() => _FlutterToastState();
}

class _FlutterToastState extends State<FlutterToast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Toast"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 50),
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () => showToast("Show Short Toast"),
              child: Text(
                'Show Short Toast',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () =>
                  showToast("Show Long Toast", duration: Toast.LENGTH_LONG),
              child: Text(
                'Show Long Toast',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () => showToast("Show Toast at Bottom",
                  duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM),
              child: Text(
                'Show Toast at Bottom',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }

  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity,backgroundColor: Colors.red,backgroundRadius: 10);
  }
}
