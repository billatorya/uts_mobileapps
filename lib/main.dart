import 'package:flutter/material.dart';
import 'login.dart';
import 'welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    WelcomePage.tag: (context) => WelcomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kodeversitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        fontFamily: 'Montserrat',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}