import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
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
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/1133957/pexels-photo-1133957.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
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
    return ListTile(leading: Icon(Icons.access_alarm), title: Text('$title'));
  }
}
