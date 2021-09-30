import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Imagen superior en el screen
          Image(
            image: NetworkImage('https://modatechguatemala.com/wp-content/uploads/2020/06/travel-landscape-01.jpg')
          ),

          // Title section
          _TitleSection(),

          // Button section
          _ButtonSection(),

          // Texto del parrafo
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 25.0),
            child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.')
          )

        ],
      )
    );
  }

}

// Widget de Title Section
class _TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Title Section Component', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Title Section', style: TextStyle(color: Colors.black45))
            ],
          ),
          Row(
            children: [
              Icon(Icons.star, color: Colors.red),
              Text('41', style: TextStyle(fontSize: 17))
            ],
          )
        ],
      ),
    );
  }
}

// Widget de Button Section
class _ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _CustomeButton(icon: Icons.call, text: 'CALL'),
          _CustomeButton(icon: Icons.directions, text: 'ROUTE'),
          _CustomeButton(icon: Icons.share, text: 'SHARE')
        ],
      ),
    );
  }
}

// Custome button, van dentro de button section
class _CustomeButton extends StatelessWidget {
  final IconData icon;
  final String text;

  _CustomeButton({
    required this.icon,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.blue, size: 30.0),
        Text(this.text, style: TextStyle(color: Colors.blue))
      ],
    );
  }
}