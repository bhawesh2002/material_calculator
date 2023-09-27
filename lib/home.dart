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
        body: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            const Positioned(bottom: 0, left: 0, child: NumPad())
          ],
        ));
  }
}
