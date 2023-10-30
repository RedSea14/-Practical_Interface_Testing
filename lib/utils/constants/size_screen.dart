import 'package:flutter/material.dart';

double getWidth(context) {
  return MediaQuery.sizeOf(context).width;
}

double getHeight(context) {
  return MediaQuery.sizeOf(context).height;
}

double paddingHorizonCustom(context) {
  return MediaQuery.sizeOf(context).width * 0.04;
}

double paddingVerticalCustom(context) {
  return MediaQuery.sizeOf(context).height * 0.08;
}
