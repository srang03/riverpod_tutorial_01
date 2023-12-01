import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Entitiy/Counter.dart';

class CounterChangeNotifier extends ChangeNotifier{
  Counter counter ;
  CounterChangeNotifier([Counter? counter]) : counter = counter ?? Counter(0);

  void increase(){
    counter = Counter(counter.count + 1);
    notifyListeners();
  }

  void decrease(){
    counter = Counter(counter.count-1);
    notifyListeners();
  }
}

class CounterStateNotifier extends StateNotifier<Counter>{
  CounterStateNotifier([Counter? counter]): super(counter ?? Counter(0));

  void increase(){
    state = Counter(state.count + 1);

  }
  void decrease(){
    state = Counter(state.count-1);
  }
}

final counterChangeNotifierProvider = ChangeNotifierProvider<CounterChangeNotifier>((ref) =>  CounterChangeNotifier());
final counterStateNotifierProvider =StateNotifierProvider<CounterStateNotifier, Counter>((ref) => CounterStateNotifier());

final counterStateProvider = StateProvider((ref) => Counter(0));

final increaseCounterStateProvider = Provider((ref) => (){
  final counterNotifier  = ref.read(counterStateProvider.notifier);
  counterNotifier.state = Counter(ref.read(counterStateProvider).count + 1);
});

