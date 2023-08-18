import 'package:flutter/material.dart';

import '../riverpod/components/counter_view.dart';
import 'controller/counter_controller.dart';

void main() {
  setupLocator();
  runApp(const MaterialApp(home: CounterView()));
}
