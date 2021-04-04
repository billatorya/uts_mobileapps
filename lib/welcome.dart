import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  static String tag = 'welcome-page';

  @override
  Widget build(BuildContext context) {
    final logo = bungkusind(
              tag: 'Bungkusind',
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: CircleAvatar(
                  radius: 72.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/logo.png'),
                ),
              ),
            );
        
            final welcome = Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Welcome!',
                style: TextStyle(fontSize: 28.0, color: Colors.white),
              ),
            );
        
            final lorem = Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Hi, Human. Thankyou for loving and keeping me save. - Earth',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            );
        
            final body = Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(28.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.green,
                  Colors.lightGreenAccent,
                ]),
              ),
              child: Column(
                children: <Widget>[logo, welcome, lorem],
              ),
            );
        
            return Scaffold(
              body: body,
            );
          }
    
      bungkusind({String tag, Padding child}) {}
}