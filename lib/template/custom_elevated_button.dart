import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPressed;

  const CustomElevatedButton({required this.buttonName, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(onPressed: onPressed, child: Text(buttonName));
  }
}
