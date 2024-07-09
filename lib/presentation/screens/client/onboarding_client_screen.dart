import 'package:flutter/material.dart';
import 'package:my_app_9a/presentation/widgets/admin/card_widget.dart';

class OnboardingClientScreen extends StatelessWidget {
  final String titles;

  const OnboardingClientScreen({super.key, required this.titles});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
            titles),
      ),
      body: const CardWidget(title: "Mi primer widget", subtitle: "Card test", bodyText: "Este es mi primer widget en flutter.")
    );
  }
}
