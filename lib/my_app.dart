import 'package:flutter/material.dart';
import 'package:riverpod_231201/const/const_string.dart';
import 'package:riverpod_231201/screen/counter_change_notifier_page.dart';
import 'package:riverpod_231201/screen/counter_state_notifier_page.dart';
import 'package:riverpod_231201/screen/counter_state_provider_page.dart';
import 'package:riverpod_231201/screen/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:  '/',
      routes: {
        '/': (context)=> const HomeScreen(),
        counterChangeNotifierPage : (context) =>  const CounterChangeNotifierPage(pageName: counterChangeNotifierPage),
        counterStateNotifierPage: (context) => const CounterStateNotifierPage(pageName: counterStateNotifierPage,),
        counterStateProviderPage: (context) => const CounterStateProviderPage(pageName: counterStateProviderPage,)
      },
    );
  }
}
