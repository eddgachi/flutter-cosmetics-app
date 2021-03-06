import 'package:cosmetics_app/constants.dart';
import 'package:flutter/material.dart';

class MyActionBar extends StatelessWidget {
  const MyActionBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Image.asset(
              'assets/images/menu.png',
              width: 24,
              color: nDarkBackgroundColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              'assets/images/cart.png',
              width: 24,
              color: nDarkBackgroundColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
