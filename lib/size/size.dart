import 'package:flutter/material.dart';

double leftWidth(BuildContext context) {
  return MediaQuery.of(context).size.width / 5;
}

double rightWidth(BuildContext context) {
  return MediaQuery.of(context).size.width / 5;
}

double middleWidth(BuildContext context) {
  return MediaQuery.of(context).size.width * 0.6;
}

double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double headerHeight(BuildContext context) {
  return MediaQuery.of(context).size.height * 0.07;
}
