import 'package:flutter/material.dart';
import 'package:my_profile/models/menu.dart';

class MenuController extends ChangeNotifier {
  int _activeIndex = 0;

  final List<Menu> _listMenu = [
    Menu(title: 'MySelf', position: 0),
    Menu(title: 'Skills', position: 909),
    Menu(title: 'TechStack', position: 1140),
    Menu(title: 'Journey', position: 1140),
  ];

  int get activeIndex => _activeIndex;

  List<Menu> get listMenu => _listMenu;

  void selectMenu(int index) {
    _activeIndex = index;
    notifyListeners();
  }

  void autoSelectMenu(double offset) {
    if (_activeIndex == (_listMenu.length - 1)) {
      _activeIndex = _listMenu.length - 1;
      notifyListeners();
    } else {
      for (var i = 0; i < _listMenu.length; i++) {
        if (offset >= _listMenu[i].position &&
            offset < _listMenu[i + 1].position) {
          _activeIndex = i;
          notifyListeners();
          return;
        }
      }
    }
  }
}
