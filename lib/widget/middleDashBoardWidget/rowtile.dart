import 'package:adstack/widget/middleDashBoardWidget/slider_rating.dart';
import 'package:flutter/material.dart';

class RowTile extends StatelessWidget {
  const RowTile({super.key, required this.userId, required this.artwork, required this.rating});
  final String userId;
  final String artwork;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              child: Icon(Icons.person),
            ),
            Text(
              userId,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        SizedBox(width: 10), 
        Text(
          artwork,
          style: TextStyle(color: Colors.white),
        ),
        SliderRating(rating: rating),
      ],
    );
  }
}
