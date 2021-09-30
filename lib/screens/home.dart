import 'package:flutter/material.dart';

import 'package:first_interfaces/widgets/card_table.dart';
import 'package:first_interfaces/widgets/background.dart';
import 'package:first_interfaces/widgets/title_page.dart';
import 'package:first_interfaces/widgets/bottom_navigation.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Background(),
          // Elementos del body
          _HomeBody()
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TitlePage(),
          CardTable()
        ],
      )
    );
  }
}