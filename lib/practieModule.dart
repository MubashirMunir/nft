import 'package:flutter/material.dart';
class practiceModule extends StatelessWidget {
  const practiceModule({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:
         Container(
      width: 400,
      height: 600,
      child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              color: Colors.white),

    ),
        ));

    }
}





// decoration: const BoxDecoration(
//     borderRadius: BorderRadius.all(Radius.circular(10)
//     ),
//     boxShadow: [
//       BoxShadow(
//           color: Colors.black, //New
//           blurRadius: 25.0,
//           offset: Offset(0, 25))]),