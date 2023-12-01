import 'package:flutter/material.dart';
import 'package:riverpod_231201/template/custom_elevated_button.dart';

class LayoutTemplate extends StatelessWidget {
  final String centerText;
  final List<Widget> buttons;
  const LayoutTemplate({super.key, required this.centerText, this. buttons = const []});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(centerText),
          ...buttons
        ],
      ),
    );
  }
}
