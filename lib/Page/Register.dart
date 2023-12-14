import 'package:flutter/material.dart';
import 'package:movie/Widget/Register/ItemRegister.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, right: 20, left: 20),
              child: ItemRegister(),
            ),
          ],
        ),
      ),
    );
  }
}
