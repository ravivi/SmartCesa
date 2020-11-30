
import 'package:SmartCesa/screens/culte.dart';
import 'package:SmartCesa/screens/enseignement.dart';
import 'package:SmartCesa/screens/liveCulte.dart';
import 'package:SmartCesa/widgets/nav.dart';
import 'package:flutter/material.dart';
import './screens/home.dart';
import 'screens/testGrid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SmartCesa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
       home: Nav(),
      //home: LiveCulte(),
      routes: {
        Culte.routeName:(context)=>Culte(),
        Enseignement.routeName:(context)=>Enseignement(),
      },
    );
  }
}