import 'package:flutter/material.dart';

class TechStack {
  final String name;
  final double exp;
  final int yearBegin;
  final String? logoUrl;
  final Color? backgroundColor;
  final Color? titleColor;

  TechStack({
    required this.name,
    required this.exp,
    required this.yearBegin,
    this.logoUrl,
    this.backgroundColor,
    this.titleColor,
  });
}
