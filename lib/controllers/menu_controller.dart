import 'package:flutter/material.dart';

class MenuController extends ChangeNotifier {
  int _activeIndex = 0;

  final List<String> _listMenu = [
    'MySelf',
    'Journey',
    'Skills',
    'TechStack',
  ];

  int get activeIndex => _activeIndex;

  List<String> get listMenu => _listMenu;

  void selectMenu(int index) {
    _activeIndex = index;
    notifyListeners();
  }
}
