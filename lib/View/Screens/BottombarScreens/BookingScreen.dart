import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          height: 150,
          width: double.infinity,
          child: Text('Your Bookings',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(fontSize: 25)),
        ),
      ),
    );
  }
}
