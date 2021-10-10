import 'package:flutter/material.dart';
import 'package:sixtheducation/screens/homeModelScreen.dart';
import 'package:sixtheducation/screens/profileScreen.dart';
import 'package:sixtheducation/screens/calendarScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedIndex = 0;
  List<Widget> _widgetNavBar = <Widget>[
    ModelNotiStudents(),
    CalendarScreen(),
    ProfileScreen(),
  ];
  void _tapNavBar(var index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: _widgetNavBar.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _tapNavBar,
          selectedItemColor: Colors.red[300],
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
              label: "Activity",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_view_month),
              label: "Calendar",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined),
              label: "Account",
            )
          ],
        ),
      ),
    );
  }
}
