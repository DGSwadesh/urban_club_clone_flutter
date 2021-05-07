import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Image.network(
        'https://image.freepik.com/free-vector/error-404-concept-landing-page_114360-2279.jpg',
        fit: BoxFit.fill,
      ),
    );
  }
}
