import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_profile/contant.dart';
import 'package:my_profile/data/menu_list.dart';
import 'package:my_profile/models/menu.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MenuController extends GetxController {
  final _activeIndex = 0.obs;
  final List<Menu> _listMenu = menuDatas;
  final _itemScrollController = ItemScrollController();
  final _itemPositionListener = ItemPositionsListener.create();
  // app Bar handler
  final _toolbarBackgroundColor = myProfileBackgroundColor.obs;
  final _textToolbarColor = kDefaultAppbarTextColor.obs;
  // home Animation handler
  final _scrollPosHome = 0.0.obs;

  @override
  void onInit() {
    _itemPositionListener.itemPositions.addListener(itemScrollListener);
    super.onInit();
  }

  @override
  void onClose() {
    _itemPositionListener.itemPositions.removeListener(itemScrollListener);
    super.onClose();
  }

  int get activeIndex => _activeIndex.value;
  List<Menu> get listMenu => _listMenu;
  ItemScrollController get itemScrollController => _itemScrollController;
  ItemPositionsListener get itemPositionListener => _itemPositionListener;
  Color get toolbarBackgroundColor => _toolbarBackgroundColor.value;
  Color get textToolbarColor => _textToolbarColor.value;
  double get scrollPosHome => _scrollPosHome.value;

  void showContent(int index) {
    _itemScrollController.scrollTo(
      index: index,
      duration: kDefaultDuration,
      curve: Curves.ease,
    );
  }

  void itemScrollListener() {
    final items = _itemPositionListener.itemPositions.value;
    final activeIndex = items.first.index;
    _activeIndex(activeIndex);

    handlePhotoProfileAnimation(items.first);
    handleAppBarChange(_listMenu[activeIndex]);
  }

  void handlePhotoProfileAnimation(ItemPosition items) {
    if (_listMenu[items.index].title == menuDatas.first.title) {
      _scrollPosHome(items.itemTrailingEdge);
    }
  }

  void handleAppBarChange(Menu selectedMenu) {
    if (selectedMenu.textToolbarColor != null) {
      _textToolbarColor(selectedMenu.textToolbarColor);
    } else {
      _textToolbarColor(kDefaultAppbarTextColor);
    }
    if (selectedMenu.toolbarBackgroundColor != null) {
      _toolbarBackgroundColor(selectedMenu.toolbarBackgroundColor);
    } else {
      _toolbarBackgroundColor(myProfileBackgroundColor);
    }
  }
}
