import 'package:flutter/material.dart';

class ScrollProvider extends ChangeNotifier {
  double scrollPosition;
  ScrollProvider({this.scrollPosition = 0});

  void changeScrollOffset(double newOffset) {
    scrollPosition = newOffset;
    notifyListeners();
  }

  @override
  String toString() {
    return '$runtimeType($scrollPosition)';
  }
}
