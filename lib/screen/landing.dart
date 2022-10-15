import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
            child: Center(
          child: Card(
            color: Colors.grey,
            elevation: 30,
            margin: EdgeInsets.all(20),
            borderOnForeground: true,
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                print('Card tapped.');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(flex: 1,
                      child: SizedBox(
                          //height: 50.0,
                          child: ListTile(
                    isThreeLine: true,
                    //leading: Icon(Icons.album),
                    title: Text(
                      'Upcoming',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text(
                      'Lunch \n' +
                          'Chicken Biryani \n' +
                          DateTime.now().toString(),
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ))),
                  Expanded(flex: 2,
                      child: Container(
                        padding: EdgeInsets.all(10),
                    width: 500,
                    height: 500,
                    child: Image.asset(
                      "assets/images/chicken-biryani.jpg",
                      fit: BoxFit.cover,
                    ),
                  )),
                ],
              ),
            ),
          ),
        )),
        Expanded(
            child: Center(
          child: Card(
            color: Colors.grey,
            elevation: 30,
            margin: EdgeInsets.all(20),
            borderOnForeground: true,
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                print('Card tapped.');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(flex: 1,
                      child: SizedBox(
                          //height: 100.0,
                          child: ListTile(
                    //leading: Icon(Icons.album),
                    title: Text(
                      'Recent',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text(
                      'Breakfast \n' + 'Idli \n' + DateTime.now().toString(),
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ))),
                  Expanded(flex: 2,
                      child: Container(
                    padding: EdgeInsets.all(10),
                    width: 500,
                    height: 500,
                    child: Image.asset(
                      "assets/images/idli.jpg",
                      fit: BoxFit.cover,
                    ),
                  )),
                ],
              ),
            ),
          ),
        ))
      ],
    );
  }
}
