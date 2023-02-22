import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class Counterr extends GetxController {
  RxInt value = 0.obs;

  counterData() {
    value += 5;
    print(value);
  }
}
