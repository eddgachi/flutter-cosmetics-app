import 'package:cosmetics_app/constants.dart';
import 'package:cosmetics_app/screens/home/widget/cosmetics_full.dart';
import 'package:cosmetics_app/screens/home/widget/popular_cosmetics.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            PopularCosmetics(),
            CosmeticsFull(),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: nDarkBackgroundColor,
      elevation: 0,
      centerTitle: true,
      title: Image.asset('assets/images/logo.png'),
      leading: IconButton(
        icon: Image.asset(
          'assets/images/menu.png',
          width: 24,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: Image.asset(
            'assets/images/cart.png',
            width: 24,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
