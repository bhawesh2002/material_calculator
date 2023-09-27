import 'package:flutter/material.dart';
import 'package:material_calculator/numpad.dart';

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
            Positioned(bottom: 0, left: 0, child: NumPad())
          ],
        ));
  }
}
