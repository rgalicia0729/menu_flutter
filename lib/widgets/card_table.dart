import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.border_all,
              color: Colors.blue,
              text: 'General',
            ),
            _SingleCard(
              icon: Icons.car_rental,
              color: Colors.pinkAccent,
              text: 'Transport',
            )
          ]
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.border_all,
              color: Colors.blue,
              text: 'General',
            ),
            _SingleCard(
              icon: Icons.car_rental,
              color: Colors.pinkAccent,
              text: 'Transport',
            )
          ]
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.border_all,
              color: Colors.blue,
              text: 'General',
            ),
            _SingleCard(
              icon: Icons.car_rental,
              color: Colors.pinkAccent,
              text: 'Transport',
            )
          ]
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.border_all,
              color: Colors.blue,
              text: 'General',
            ),
            _SingleCard(
              icon: Icons.car_rental,
              color: Colors.pinkAccent,
              text: 'Transport',
            )
          ]
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  _SingleCard({
    required this.icon,
    required this.color,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(this.icon),
            radius: 35,
          ),
          SizedBox(height: 10.0),
          Text(this.text, style: TextStyle(color: this.color, fontSize: 15.0))
        ],
      ),
    );
  }
}