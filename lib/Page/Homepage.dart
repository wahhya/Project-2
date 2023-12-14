import 'package:flutter/material.dart';
import 'package:movie/App/Home/AppBarHome.dart';
import 'package:movie/Widget/Home/ItemHome.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            AppBarHome(),
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
              child: ItemHome(),
            ),
          ],
        ),
      ),
    );
  }
}
