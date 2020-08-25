import 'package:cosmetics_app/constants.dart';
import 'package:cosmetics_app/screens/detail/detail_screen.dart';
import 'package:flutter/material.dart';

class CosmeticsFull extends StatelessWidget {
  const CosmeticsFull({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Cosmetics Full Kit',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'ALL',
                style: TextStyle(
                  color: Colors.black38,
                ),
              )
            ],
          ),
          ListView.builder(
            itemCount: cosmeticsFullList.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DetailScreen();
                    },
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                ),
                child: Image.asset(
                  cosmeticsFullList[index],
                  height: 210,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
