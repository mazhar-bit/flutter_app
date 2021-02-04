import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'voiceapp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("voice App"),
            backgroundColor: Colors.greenAccent,
          ),
          body:(
          Column(

            mainAxisAlignment:  MainAxisAlignment.center,

           children: <Widget>[

             Center(

                child:Radiobutton(),

             ),
             ],
          )      )

      ),
    );
  }
}

class Radiobutton extends StatefulWidget {
  @override
  RadioButtonWidget createState() => RadioButtonWidget();
}

class RadioButtonWidget extends State {

  String radioItem = '';

  Widget build(BuildContext context) {
    return Column(

      children: <Widget>[
          Text("Do you want Go To Next Page"),
        RadioListTile(
          groupValue: radioItem,
          title: Text('yes'),
          value: ' 1',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),

        RadioListTile(
          groupValue: radioItem,
          title: Text('No'),
          value: ' 0',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),


        //Text('$radioItem', style: TextStyle(fontSize: 23),),

        RaisedButton(onPressed:() {

        Navigator.of(context).push(MaterialPageRoute(builder:(context) => voiceapp(radioItem:radioItem),


        ));
        },
        child: Text("Next"),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.blueAccent),
          )

        )
      ],
    );
  }
}











// class Myapp extends StatefulWidget {
//   @override
//   _MyappState createState() => _MyappState();
// }
//
// class _MyappState extends State<Myapp> {
//     int b =0;
//     int a=0;
//     void f1 (int a){
//       setState(() {
//         b=a;
//       });
//     }
//
//     void f2(){
//
//     }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar ( title: Text('App'),),
//
//         body:(
//         Column(
//           mainAxisAlignment:  MainAxisAlignment.center,
//           children: <Widget>[
//             Center(
//               child: Text('Answer'),
//             ),
//           Row(
//             children: <Widget>[
//               Radio(value: 0, groupValue: b, onChanged: (v) {f1(v);},),
//               Radio(value: 1, groupValue: b, onChanged: (v) {f1(v);},)
//
//             ],
//
//           )
//           ],
//         )
//
//         ),
//       ),
//     );
//   }
// }

