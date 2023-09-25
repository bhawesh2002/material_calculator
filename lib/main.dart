import 'package:flutter/material.dart';

void main() => runApp(Material_Calculator());

class Material_Calculator extends StatelessWidget {
  const Material_Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Calculator',
      theme: ThemeData(useMaterial3: true),
    );
  }
}
