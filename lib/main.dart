import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:first_interfaces/screens/home.dart';
import 'package:first_interfaces/screens/basic_design.dart';
import 'package:first_interfaces/screens/scroll.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: <String, WidgetBuilder>{
        'home'        : (_) => HomePage(),
        'basic_design': (_) => BasicDesignScreen(),
        'scroll'      : (_) => ScrollScreen(),
      },
    );
  }
}