import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      height: 600,
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[2],
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: NetworkImage(
                        'https://www.spiralytics.com/wp-content/uploads/2020/08/ecommerce-optimization.png',
                      )),
                ),
              ),
              Positioned(
                top: 35,
                left: 150,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.yellow,
                ),
              )
            ],
          ),
          Card(
            color: Colors.blueAccent,
            margin: EdgeInsets.all(3),
          ),
          tileElement('Register as partner'),
          tileElement('About urban clone Company'),
          tileElement('Share Urban clone company'),
          tileElement('Refer & Earn'),
          tileElement('My Gift Cards'),
          tileElement('My Wallets'),
          tileElement('Schedule Bookings'),
          tileElement('Rate Urban clone company'),
        ],
      ),
    );
  }

  Widget tileElement(title) {
    return ListTile(
      leading: Icon(Icons.access_alarm),
      title: Text('$title'),
      tileColor: Colors.white,
    );
  }
}
