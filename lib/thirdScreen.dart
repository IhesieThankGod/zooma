import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'styles.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0xFFFFB04E),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                "tgassets/2.svg",
                height: 300.0,
              ),
              Text(
                'Save your favorites',
                style: fontHeaderDetails,
              ),
              Text(
                'Save your favorite recipes and \n get reminders to buy the \n ingridents to cook them.',
                textAlign: TextAlign.center,
                style: fontDetails,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
