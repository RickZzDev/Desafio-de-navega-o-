import 'package:carousel_slider/carousel_slider.dart';
import 'package:exp_nav/components/card_star.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(
          items: [
            CardStar(
                // color: Colors.red,
                // number: "3",
                ),
            CardStar(
                // number: "1",
                // color: Colors.blue,
                ),
          ],
          options: CarouselOptions(
              initialPage: 0,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              viewportFraction: 0.7),
        ),
      ),
    );
  }
}
