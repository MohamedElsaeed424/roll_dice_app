import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GeneralContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
 
 const  GeneralContainer(this.color1, this.color2, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        )),
        child: const Center(
           child: DiceRoller() 
        ));
  }


}



// class GeneralContainer extends StatelessWidget {
//   final List <Color> gradientColors ;
//   const GeneralContainer(this.gradientColors ,{super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         decoration:  BoxDecoration(
//             gradient: LinearGradient(
//           colors: gradientColors,
//           begin: startAlignment,
//           end: endAlignment,
//         )),
//         child: const Center(
//           child: StyledText('Hello Mohamed'),
//         ));
//   }
// }
