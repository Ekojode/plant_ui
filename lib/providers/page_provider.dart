import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pageProvider = ChangeNotifierProvider<PageNotifier>((ref) {
  return PageNotifier();
});

class PageNotifier extends ChangeNotifier {
  int _page = 0;

  int get page => _page;

  void changePage(int i) {
    _page = i;
    notifyListeners();
  }
}
