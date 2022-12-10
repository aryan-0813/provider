import 'package:flutter/material.dart';
import './providerclass.dart';
import 'package:provider/provider.dart';
import './homee.dart';

void main() {
  runApp(pro_app());
}

class pro_app extends StatefulWidget {
  const pro_app({super.key});

  @override
  State<pro_app> createState() => _pro_appState();
}

class _pro_appState extends State<pro_app> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => savedData(),
      child: MaterialApp(
        home: name(),
      ),
    );
  }
}
