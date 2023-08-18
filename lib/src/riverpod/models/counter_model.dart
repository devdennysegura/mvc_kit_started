import 'package:stacked/stacked.dart';

class CounterModel extends IndexTrackingViewModel {
  int count = 0;

  void increment() {
    count++;
  }

  void decrement() {
    count--;
  }
}
