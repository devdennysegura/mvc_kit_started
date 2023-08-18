import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components/counter_view.dart';

void main() {
  runApp(const ProviderScope(child: CounterView()));
}
