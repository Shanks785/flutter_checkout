import 'package:flutter/material.dart';

class SlidesDataModel {
  final int id;
  final String slideText;
  final String slideSubText;
  final IconData slideIcon;

  SlidesDataModel(
      {required this.id,
      required this.slideText,
      required this.slideSubText,
      required this.slideIcon});
}
