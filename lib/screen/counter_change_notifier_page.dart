import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_231201/const/const_string.dart';
import 'package:riverpod_231201/notifier/notifiers_providers.dart';
import 'package:riverpod_231201/template/custom_elevated_button.dart';

import '../template/layout_template.dart';

class CounterChangeNotifierPage extends ConsumerWidget {
  const CounterChangeNotifierPage({required pageName, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(counterChangeNotifierProvider);
    return Scaffold(
        body: LayoutTemplate(
            centerText: state.counter.count.toString(),
            buttons: [
          CustomElevatedButton(
            buttonName: 'increase',
            onPressed: () {
              ref.read(counterChangeNotifierProvider).increase();
            },
          ),
          CustomElevatedButton(
            buttonName: 'decrease',
            onPressed: () {
              ref.read(counterChangeNotifierProvider).decrease();
            },
          ),
        ]));
  }
}
