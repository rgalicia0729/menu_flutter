import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.50, 0.50],
            colors: [
              Color(0xff5EE8C5),
              Color(0xff30BAD6)
            ]
          )
        ),
        child: PageView(
          scrollDirection: Axis.vertical,
          children: [
            _PageOne(),
            _PageTwo()
          ],
        ),
      )
    );
  }
}

class _PageOne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background
        _Background(),

        // Main content
        _MainContent()
      ],
    );
  }
}

class _Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: double.infinity,
        color: Color(0xff30BAD6),
        alignment: Alignment.topCenter,
        child: Image(
          image: AssetImage('assets/scroll-1.png'),
        )
      )
    );
  }
}

class _MainContent extends StatelessWidget {
  final mainStyleText = TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: size.height * 0.07),
          Text('11°', style: mainStyleText),
          Text('Miércoles', style: mainStyleText),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down,  size: 100.0, color: Colors.white)
        ],
      )
    );
  }
}

class _PageTwo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: (){}, 
          child: Text('Bienvenido', style: TextStyle(fontSize: size.height * 0.04, color: Colors.white))
        ),
      )
    );
  }
}