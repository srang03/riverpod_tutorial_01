import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_231201/notifier/notifiers_providers.dart';
import 'package:riverpod_231201/template/layout_template.dart';

import '../const/const_string.dart';
import '../template/custom_elevated_button.dart';

class CounterStateNotifierPage extends ConsumerWidget {
  const CounterStateNotifierPage({required pageName, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(counterStateNotifierProvider);
    
    return  Scaffold(
      body: LayoutTemplate(centerText: state.count.toString(),
        buttons: [
        CustomElevatedButton(buttonName: increase, onPressed: ref.read(counterStateNotifierProvider.notifier).increase)

      ],),
    );
  }
}
