import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFF90716);
const kPrimaryLightColor = Color(0xFFFF5403);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFF5403), Color(0xFFF90716)],
);
const kSecondaryGradientColor = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0xFFFFF323), Color(0xFFFFCA03)],
);
const kBackgroundGradientColor = LinearGradient(
  colors: [
    Color.fromRGBO(252, 0, 35, 0),
    Color.fromRGBO(252, 0, 35, 0.36),
  ],
  stops: [
    0.0036,
    1,
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  transform: GradientRotation(11.77 * (3.1415926535 / 180)),
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Colors.black;
const kSubTextColor = Color(0xFF979797);
const kButtonTextColor = Colors.white;
const kRatingBarColor = Color(0xFFFFCA03);
const kDisabledColor = Colors.grey;
const kErrorColor = Colors.red;
const kBackgroundColor = Color(0xFFEFE9E9);

const kPrimaryBackgroundColor = Colors.white;

const headingStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: kRatingBarColor,
  height: 1.5,
);

const titleStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: kTextColor,
  height: 1.5,
);
