import 'package:cosmetics_app/constants.dart';
import 'package:cosmetics_app/screens/detail/widget/my_action.dart';
import 'package:flutter/material.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: 320,
      decoration: BoxDecoration(
        color: nCardBackgroundColor,
        image: DecorationImage(
          image: AssetImage('assets/images/product_full_detail.png'),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: MyActionBar(),
    );
  }
}
