import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zooma/thirdscreen.dart';

import 'styles.dart';

class SecondScreen extends StatelessWidget {
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
                "tgassets/1.svg",
                height: 300.0,
              ),
              Text(
                'Easy & healthy',
                style: fontHeaderDetails,
              ),
              Text(
                'Find thousands of easy and \n healthy recipes so you save \n time and eat better.',
                textAlign: TextAlign.center,
                style: fontDetails,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ThirdScreen()));
                },
                child: Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
