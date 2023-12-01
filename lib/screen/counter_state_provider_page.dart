import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_231201/const/const_string.dart';
import 'package:riverpod_231201/notifier/notifiers_providers.dart';
import 'package:riverpod_231201/template/custom_elevated_button.dart';

import '../template/layout_template.dart';

class CounterStateProviderPage extends ConsumerWidget {
  const CounterStateProviderPage({required pageName, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return  Scaffold(
      body: LayoutTemplate(centerText: ref.watch(counterStateProvider).count.toString(), buttons: [
        CustomElevatedButton(buttonName: increase, onPressed: (){
          ref.read(increaseCounterStateProvider)();
        })
      ]),
    );
  }
}
