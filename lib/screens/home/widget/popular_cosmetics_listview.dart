import 'package:cosmetics_app/constants.dart';
import 'package:cosmetics_app/widget/rating_bar.dart';
import 'package:flutter/material.dart';

class PopularCosmeticsListView extends StatelessWidget {
  const PopularCosmeticsListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      padding: EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        itemCount: popularCosmeticsList.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => Container(
          width: 220,
          height: 310,
          margin: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(
                popularCosmeticsList[index]['imageUrl'],
              ),
            ),
            borderRadius: BorderRadius.circular(24),
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                nPrimaryColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  popularCosmeticsList[index]['name'],
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RatingBar(
                  onRatingUpdate: (value) {},
                  selectColor: nDarkBackgroundColor,
                  maxRating: 5,
                  value: popularCosmeticsList[index]['star'],
                  size: 18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
