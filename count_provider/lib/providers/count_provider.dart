import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int count;

  CountProvider() {
    count = 1;
    notifyListeners();
  }
  void addCount() {
    count++;
    notifyListeners();
  }

  void removeCount() {
    count--;
    notifyListeners();
  }
}
