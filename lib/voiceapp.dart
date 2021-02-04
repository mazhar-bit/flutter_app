import 'package:flutter/material.dart';

class voiceapp extends StatelessWidget {

  String radioItem;
    voiceapp({this.radioItem});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("voiceapp"),
        backgroundColor: Colors.greenAccent,
      ),

      body: Center(
        child: Text(radioItem),
      ),
    );

  }
}
