import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  bool swithOne = true;
  bool swithTwo = false;

  ontapOne() {
    swithOne = true;
    swithTwo = false;
    notifyListeners();
  }

  ontapTwo() {
    swithOne = false;
    swithTwo = true;
    notifyListeners();
  }
}
