import 'package:flutter/material.dart';

class TitlePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify transaction', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(height: 10.0),
            Text('Classify this transaction into a particular category', style: TextStyle(fontSize: 16.0, color: Colors.white),)
          ],
        ),
      ),
    );
  }
}