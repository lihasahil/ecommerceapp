import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text('My Digiatal Card'),),
    body:
    Container(
    height:120,
    width:120,
    ),
    );}
}
