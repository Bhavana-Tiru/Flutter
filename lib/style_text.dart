import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key}); // this.text==text, this.text

  final String text;

  @override
  Widget build(context) {
    // TODO: implement build
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 28,
      ),
    );
  }
}
