import 'package:flutter/material.dart';

void main() => runApp(const Material_Calculator());

// ignore: camel_case_types
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
