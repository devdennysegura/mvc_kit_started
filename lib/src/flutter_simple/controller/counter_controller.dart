import 'package:flutter/material.dart';

import '../components/counter_view.dart';
import '../models/counter_model.dart';

class CounterController extends StatefulWidget {
  const CounterController({super.key});

  @override
  State<CounterController> createState() => _CounterControllerState();
}

class _CounterControllerState extends State<CounterController> {
  final CounterModel _model = CounterModel();

  void _increment() {
    setState(() {
      _model.count++;
    });
  }

  void _decrement() {
    setState(() {
      _model.count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterView(
      count: _model.count,
      onIncrement: _increment,
      onDecrement: _decrement,
    );
  }
}
