import 'package:flutter/material.dart';

import 'BottombarScreens/BookingScreen.dart';
import 'BottombarScreens/HomeScreen.dart';
import 'BottombarScreens/ProfileScreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //index for bottom navigationbar app
  int _selectedIndex = 0;
  //showing the condition of searchbar ie. open or close
  var folded = true;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static var _widgetOptions = <Widget>[
    HomeScreen(),
    BookingScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //service search ui
              Align(
                alignment: Alignment.topRight,
                child: _searchServices(
                  'Search for services',
                  Colors.white,
                ),
              ),
              //location search ui
              _locationSearch(Colors.orange, 'search Location'),
              //Home,booking and profile ui
              _widgetOptions.elementAt(_selectedIndex),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: _onItemTapped,
            currentIndex: _selectedIndex,
            unselectedItemColor: Colors.orange,
            elevation: 50,
            items: <BottomNavigationBarItem>[
              _bottomAppBarItems(
                Icons.home,
                'Home',
              ),
              _bottomAppBarItems(
                Icons.shopping_cart,
                'Bookings',
              ),
              _bottomAppBarItems(
                Icons.account_circle,
                'Profile',
              ),
            ]),
      ),
    );
  }

  BottomNavigationBarItem _bottomAppBarItems(IconData icon, String labelText) {
    return BottomNavigationBarItem(
      //icon: Icon(Icons.business),
      icon: Icon(icon),
      label: labelText,
      backgroundColor: Colors.green,
    );
  }

  Widget _searchServices(String hintText, Color color, [IconData? icon]) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 50,
        width: folded ? 56 : 350,
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        decoration: BoxDecoration(
            boxShadow: kElevationToShadow[6],
            color: color,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            )),
        child: Row(
          children: [
            Expanded(
                child: folded
                    ? TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              icon,
                              color: Colors.blue,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.blue[900],
                            )),
                      )
                    : TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: hintText,
                        ),
                      )),
            AnimatedContainer(
              duration: Duration(microseconds: 200),
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(folded ? 32 : 0),
                      topRight: Radius.circular(32),
                      bottomRight: Radius.circular(32),
                      bottomLeft: Radius.circular(folded ? 32 : 0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(folded ? Icons.search : Icons.close,
                          color: Colors.blue[900]),
                    ),
                    onTap: () {
                      setState(() {
                        folded = !folded;
                      });
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _locationSearch(Color color, String hintText) {
  return Container(
    height: 30,
    width: double.infinity,
    // padding: EdgeInsets.symmetric(vertical: 4, horizontal: 80),
    decoration: BoxDecoration(color: color),
    child: TextField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.location_history,
            color: Colors.white,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.white,
          )),
    ),
  );
}
