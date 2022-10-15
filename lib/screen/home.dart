import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:myapp/config/Router.dart' as fprouter;
//import 'package:myapp/model/actual.dart';
import 'package:myapp/screen/calendar.dart';
import 'package:myapp/screen/landing.dart';
import 'package:myapp/screen/metrics.dart';
import 'package:myapp/screen/planner.dart';
import 'package:myapp/screen/dashboard.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String appTitle;
  int _currentIndex = 0;

  List<Widget> _children = [
    Planner(),
    Metrics(),
    Planner(),
    Landing(),
    Landing(),
  ];

  void _onItemTapped(int index) {
    print('index: ' + index.toString());
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Row(children: <Widget>[
          Icon(Icons.calendar_today, color: Colors.white),
          Text(
            ' Food Planner',
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          )
        ])),
      ),
      body: _getBody(_currentIndex),
      drawerEnableOpenDragGesture: true,
      endDrawerEnableOpenDragGesture: true,
      drawer: _getDrawer(context),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        currentIndex: _currentIndex,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey[800],
        selectedItemColor: Colors.white70,
        backgroundColor: Colors.blueAccent,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: TextButton.icon(
                onPressed: () {
                  //Navigator.pushNamed(context, fprouter.Router.homeRoute);
                },
                icon: Icon(
                  Icons.home,
                  size: 40.0,
                ),
                label: Text('')),
          ),
          BottomNavigationBarItem(
            label: 'Planner',
            icon: TextButton.icon(
                onPressed: () {
                  //Navigator.pushNamed(context, fprouter.Router.plannerRoute);
                },
                icon: Icon(
                  Icons.assignment,
                  size: 40.0,
                ),
                label: Text('')),
          ),
          BottomNavigationBarItem(
            label: 'Metrics',
            icon: TextButton.icon(
                onPressed: () {
                  //Navigator.pushNamed(context, fprouter.Router.metricsRoute);
                },
                icon: Icon(
                  Icons.insert_chart,
                  size: 40.0,
                ),
                label: Text(' ')),
          ),
          BottomNavigationBarItem(
            label: 'Actual',
            icon: TextButton.icon(
                onPressed: () {
                  //Navigator.pushNamed(context, fprouter.Router.actualRoute);
                },
                icon: Icon(
                  Icons.mode_edit,
                  size: 40.0,
                ),
                label: Text(' ')),
          ),
          BottomNavigationBarItem(
            label: 'Plan vs Actual',
            icon: TextButton.icon(
                onPressed: () {
                  //Navigator.pushNamed(context, fprouter.Router.planVsActualRoute);
                },
                icon: Icon(Icons.compare_arrows, size: 40.0),
                label: Text(' ')),
          )
        ],
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: */ /*() {
          setState(() {
            _currentIndex = 4;
          });
        }*/ /*null,
        backgroundColor: Colors.blueAccent,
        child: Icon(
          Icons.home,
          size: 40.0,
        ),
      ),*/
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

Widget _getDrawer(context) {
  return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: Expanded(
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Icon(
            Icons.person,
            color: Colors.white,
            size: 150.0,
          ),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
          ),
        ),
        ListTile(
          leading: Icon(Icons.dashboard),
          title: Text('Dashboard'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pushNamed(context, fprouter.Router.dashboardRoute);
          },
        ),
        ListTile(
          leading: Icon(Icons.restaurant_menu),
          title: Text('Menu'),
          onTap: () {
            Navigator.pushNamed(context, fprouter.Router.menuRoute);
          },
        ),
        ListTile(
          leading: Icon(Icons.show_chart),
          title: Text('Reports'),
          onTap: () {
            Navigator.pushNamed(context, fprouter.Router.reportsRoute);
          },
        ),
        ListTile(
          leading: Icon(Icons.photo_library),
          title: Text('Gallery'),
          onTap: () {
            Navigator.pushNamed(context, fprouter.Router.galleryRoute);
          },
        ),
        ListTile(
          leading: Icon(Icons.account_box),
          title: Text('Profile'),
          onTap: () {
            Navigator.pushNamed(context, fprouter.Router.profileRoute);
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
          onTap: () {
            Navigator.pushNamed(context, fprouter.Router.settingsRoute);
          },
        ),
        ListTile(
          leading: Icon(Icons.feedback),
          title: Text('Feedback'),
          onTap: () {
            Navigator.pushNamed(context, fprouter.Router.feedbackRoute);
          },
        ),
        ListTile(
          leading: Icon(Icons.supervisor_account),
          title: Text('Support'),
          onTap: () {
            Navigator.pushNamed(context, fprouter.Router.supportRoute);
          },
        ),
        ListTile(
          leading: Icon(Icons.help),
          title: Text('Help'),
          onTap: () {
            Navigator.pushNamed(context, fprouter.Router.helpRoute);
          },
        ),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Logout'),
          onTap: () {
            Navigator.pushNamed(context, fprouter.Router.logoutRoute);
          },
        ),
      ],
    ),
  ));
}

Widget _getBottomNavigationBar(context) {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    onTap: context._onItemTapped(context._currentIndex),
    currentIndex: context._currentIndex,
    showUnselectedLabels: true,
    unselectedItemColor: Colors.grey[800],
    selectedItemColor: Colors.white70,
    backgroundColor: Colors.blueAccent,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        label: 'Home',
        icon: TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, fprouter.Router.homeRoute);
            },
            icon: Icon(
              Icons.assignment,
              size: 40.0,
            ),
            label: Text('')),
      ),
      BottomNavigationBarItem(
        label: 'Planner',
        icon: TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, fprouter.Router.plannerRoute);
            },
            icon: Icon(
              Icons.assignment,
              size: 40.0,
            ),
            label: Text('')),
      ),
      BottomNavigationBarItem(
        label: 'Metrics',
        icon: TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, fprouter.Router.metricsRoute);
            },
            icon: Icon(
              Icons.insert_chart,
              size: 40.0,
            ),
            label: Text(' ')),
      ),
      BottomNavigationBarItem(
        label: 'Actual',
        icon: TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, fprouter.Router.actualRoute);
            },
            icon: Icon(
              Icons.mode_edit,
              size: 40.0,
            ),
            label: Text(' ')),
      ),
      BottomNavigationBarItem(
        label: 'Plan vs Actual',
        icon: TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, fprouter.Router.planVsActualRoute);
            },
            icon: Icon(Icons.compare_arrows, size: 40.0),
            label: Text(' ')),
      )
    ],
  );
}

Widget _getBody(int index) {
  print('index: ' + index.toString());
  switch (index) {
    case 0:
      return Landing();
    case 1:
      return Planner();
    case 2:
      return Metrics();
    case 3:
      return Dashboard();
    case 4:
      return Calendar();
  }
}

/*Widget _getBody() {
  return Container(
    width: 400,
    child: Column(children: <Widget>[
      Row(children: <Widget>[
        Expanded(

            child: FittedBox(fit: BoxFit.fitHeight, child:
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.pink,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Center(
                  child: Text(
                'Upcoming',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              )),
              Text(
                DateTime.now().toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Biryani',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FittedBox(child: Image.asset("assets/images/chicken-biryani.jpg"), fit: BoxFit.fitHeight,)
            ],
          ),
        ))),
      ]),
      Row(children: <Widget>[
        Expanded(

            child: FittedBox(fit: BoxFit.fitHeight,child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.pink,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Center(
                  child: Text(
                'Recent',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              )),
              Text(
                DateTime.now().toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Biryani',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FittedBox(child: Image.asset("assets/images/idli.jpg"), fit: BoxFit.fitHeight,)
            ],
          ),
        )))
      ])
    ]),
  );
}*/
