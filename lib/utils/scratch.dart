import 'dart:io';

import 'package:flutter/material.dart';
class Pangy extends StatefulWidget {
  const Pangy({super.key});

  @override
  State<Pangy> createState() => _PangyState();
}

class _PangyState extends State<Pangy> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95, width: 140,
      child: Pangy(),
    );
  }
}
void pangy() {
  step1();
  step2();
  step3();
}

void step1() {
  print("Step 1 Complete");
}

void step2() {
  const Duration waqfa= Duration(seconds: 3);
  sleep(waqfa);
  print("Step 2 Complete");
}

void step3() {
  print("Step 3 Complete");
}
