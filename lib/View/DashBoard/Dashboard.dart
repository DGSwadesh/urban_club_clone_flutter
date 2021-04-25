// import 'package:flutter/material.dart';
// import 'package:icchedanaAudioStreaming/Controller/dashboardBinding.dart';
// import 'package:icchedanaAudioStreaming/View/DashBoard/profile/profile.dart';
// import 'package:icchedanaAudioStreaming/View/DashBoard/search/search.dart';
// import 'package:icchedanaAudioStreaming/util/constant.dart';

// import 'home/home.dart';
// import 'myPlayList/myPlayList.dart';

// class DashBoard extends StatefulWidget {
//   @override
//   _DashBoardState createState() => _DashBoardState();
// }

// class _DashBoardState extends State<DashBoard> {

//   // DashboardBinding dashboardBinding = DashboardBinding();

//   List<Widget> _widgetOptions = <Widget>[
//     Home(),
//     Search(),
//     MyPlayList(),
//     Profile(),
//   ];

//   int _selectedIndex = 0;
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   bool isSelectedIcon = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             backgroundColor:
//                 Color.fromRGBO(5, 3, 17, 1), // icon: Icon(Icons.home_outlined),
//             icon: _selectedIndex == 0
//                 ? Container(
//                     padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Color.fromRGBO(67, 148, 223, 1),
//                     ),
//                     child: Icon(Icons.home_outlined),
//                   )
//                 : Icon(Icons.home_outlined),
//             // label: 'Home',
//             title: Text(
//               'Home',
//               style: TextStyle(color: white, fontSize: 15),
//             ),
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Color.fromRGBO(5, 3, 17, 1),
//             // icon: Icon(Icons.search),
//             icon: _selectedIndex == 1
//                 ? Container(
//                     padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Color.fromRGBO(67, 148, 223, 1),
//                     ),
//                     child: Icon(Icons.search),
//                   )
//                 : Icon(Icons.search),
//             // label: 'Search',
//             title: Text(
//               'Search',
//               style: TextStyle(color: white, fontSize: 15),
//             ),
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Color.fromRGBO(5, 3, 17, 1),
//             // icon: Icon(Icons.favorite_border_outlined),
//             icon: _selectedIndex == 2
//                 ? Container(
//                     padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Color.fromRGBO(67, 148, 223, 1),
//                     ),
//                     child: Icon(Icons.favorite_border_outlined),
//                   )
//                 : Icon(Icons.favorite_border_outlined),
//             // label: 'My Playlist',
//             title: Text(
//               'My Playlist',
//               style: TextStyle(color: white, fontSize: 15),
//             ),
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Color.fromRGBO(5, 3, 17, 1),
//             icon: _selectedIndex == 3
//                 ? Container(
//                     padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Color.fromRGBO(67, 148, 223, 1),
//                     ),
//                     child: Icon(Icons.account_circle_outlined),
//                   )
//                 : Icon(Icons.account_circle_outlined),
//             // label: 'My Playlist',
//             title: Text(
//               'Profile',
//               style: TextStyle(color: white, fontSize: 15),
//             ),
//           ),
//         ],
//         backgroundColor: Color.fromRGBO(5, 3, 17, 1),
//         elevation: 0,
//         currentIndex: _selectedIndex,
//         unselectedItemColor: white,
//         selectedItemColor: white,
//         onTap: _onItemTapped,
//       ),
//       body: _widgetOptions.elementAt(_selectedIndex),
//     );
//   }
// }
