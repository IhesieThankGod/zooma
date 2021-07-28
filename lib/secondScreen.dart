import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'styles.dart';

class SecondScreen extends StatelessWidget {
  final int index;
  final PageController? controller;
  final List<String> title = [
    "Get Started",
    "Easy & Healthy",
    "Save your favourties"
  ];

  final colors = [
    Color(0xFFFFB04E),
    Color(0xFFFFBE97),
    Color(0xFF1FB090),
  ];

  final List<String> subtitle = [
    "Don't know what to eat? Take a\npicture we'll suggest things to\ncook with your ingredients",
    "Find thousands of easy and \n healthy recipes so you save \ntime and eat better.",
    "Save your favourites recipes and\nget reminders to buy the\ningredients to cook them."
  ];

  SecondScreen(this.index, this.controller);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: colors[index],
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                "tgassets/$index.svg",
                height: 300.0,
              ),
              Text(
                title[index],
                style: ZoomaTextStyle.fontHeaderDetails,
              ),
              Text(
                subtitle[index],
                textAlign: TextAlign.center,
                style: ZoomaTextStyle.fontDetails,
              ),
              TextButton(
                onPressed: () {
                  if (index == 2) {
                    controller!.jumpToPage(0);
                  } else {
                    controller!.jumpToPage(index + 1);
                  }
                },
                child: Text(index == 2 ? "Previous" : 'Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
