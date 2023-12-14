import 'package:flutter/material.dart';
import 'package:movie/Page/Homepage.dart';
// import 'package:movie/Page/Register.dart';

void main() => runApp(RunMain());

class RunMain extends StatefulWidget {
  const RunMain({super.key});

  @override
  State<RunMain> createState() => _RunMainState();
}

class _RunMainState extends State<RunMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
