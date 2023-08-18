import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../riverpod/models/counter_model.dart';
import '../controller/counter_controller.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CounterModel>.reactive(
      viewModelBuilder: () => locator<CounterModel>(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Counter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Count: ${model.count}',
                style: Theme.of(context).textTheme.headline4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: model.increment,
                    child: const Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: model.decrement,
                    child: const Icon(Icons.remove),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
