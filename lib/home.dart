import 'package:flutter/material.dart';
import 'package:material_calculator/components.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Calculator'),
      ),
      body: const Center(),
    );
  }
}
