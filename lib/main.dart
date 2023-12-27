import 'package:flutter/material.dart';
import 'package:learn_udemy/gradient_con.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientCon(Color.fromARGB(255, 220, 199, 137),
            Color.fromARGB(255, 132, 228, 200)),
        // For purple():intilize it as :GradientCon.purple(),
      ),
    ),
  );
}
