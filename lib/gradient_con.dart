import 'package:flutter/material.dart';
import 'package:learn_udemy/dice_roller.dart';

// var startd = Alignment.topLeft;
// var endd = Alignment.bottomRight;

class GradientCon extends StatelessWidget {
  GradientCon(this.color1, this.color2, {super.key});

  //To create another constructor function
  // const GradientCon.purple({super.key})
  //     : color1 = Color.fromARGB(255, 220, 199, 137),
  //       color2 = Color.fromARGB(255, 132, 228, 200);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: DiceRoller(), //Buttons: ElavatedButton,TextButton,Outline Button
      ),
    );
  }
}

// Alternative for color using List<color>
// const GradientCon({super.key, List<Color> or requried this.colors});
// final List<Color> colors;
// Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: StyledText("Hello! Bhavana"),
//     );
//   }
// }
