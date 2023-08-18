import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/counter_model.dart';

final counterProvider = StateProvider<CounterModel>((ref) => CounterModel());
