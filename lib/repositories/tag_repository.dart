import 'package:flutter/material.dart';

class TagRepository extends ChangeNotifier {
  String _filterTag = "Все меню";

  String get filterTag => _filterTag;

  void setFilterTag(String tagName) {
    _filterTag = tagName;

    notifyListeners();
  }
}