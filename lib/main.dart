import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('ABOUT ME'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.deepPurple[900], Colors.indigo, Colors.blue]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 85.0,
                child: CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('assets/sid.jpg'),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Text(
                'Sidmeister',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4.0,
                  fontFamily: 'TradeWinds',
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
              Text(
                'FLUTTER DEV',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5.0,
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 40.0,
                width: 105.0,
                child: Divider(
                  color: Colors.white,
                  thickness: 2.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 5),
                child: FlatButton(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Icons.email,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'sidxharth@gmail.com',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Clipboard.setData(
                        ClipboardData(text: 'sidxharth@gmail.com'));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                child: FlatButton(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Icons.phone_in_talk,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        '+91 9013XXXX59',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: '9013XXXX59'));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                child: FlatButton(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Icons.link,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'www.github.com/sidxharth',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Clipboard.setData(
                        ClipboardData(text: 'https://github.com/sidxharth/'));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
