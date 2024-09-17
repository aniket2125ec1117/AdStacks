import 'package:adstack/size/size.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderRating extends StatelessWidget {
  SliderRating({super.key, required this.rating});
  double rating;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double sliderWidth = ((MediaQuery.of(context).size.width -
                    (leftWidth(context) + rightWidth(context) + 40)) /
                2) /
            4; 
        return  SizedBox(
          width: sliderWidth,
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 10, 
              thumbShape: const RoundSliderThumbShape(
                  enabledThumbRadius: 0), 
              overlayShape: const RoundSliderOverlayShape(
                  overlayRadius: 0), 
              activeTrackColor:
                  Colors.blueAccent, 
              inactiveTrackColor: Colors.grey, 
            ),
            child: Slider(
              value: rating,
              min: 1,
              max: 5,
              divisions: 4,
              onChanged: null,
            ),
          ),
        );
      },
    );
  }
}
