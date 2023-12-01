import 'package:flutter/material.dart';

import '../const/const_string.dart';
import '../template/custom_elevated_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Column(children: [
      const Text(homePage),
      CustomElevatedButton(buttonName: counterChangeNotifierPage, onPressed: ()=>{ Navigator.pushNamed(context, counterChangeNotifierPage)},),
      CustomElevatedButton(buttonName: counterStateNotifierPage, onPressed: ()=>{Navigator.pushNamed(context, counterStateNotifierPage)},),
      CustomElevatedButton(buttonName: counterStateProviderPage, onPressed: ()=>{Navigator.pushNamed(context, counterStateProviderPage)},),
    ])));
  }
}
