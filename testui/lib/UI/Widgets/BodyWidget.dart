import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
      width: 300,
      height: 300,
      child:  Image.asset('assets/images/images (4).jpg', fit: BoxFit.fill),
    ),
        Text('name: CatFunny',textAlign: ,),
        Text('price: 200000'),
        Text('description: Cat funny')
      ],
    );
  }
}



      ///////////////////////////////////////////////////////////////////////

      // child: Text.rich(
      //   TextSpan(
      //     text: 'Xin chao ',
      //     style: TextStyle(color: Colors.red),
      //     children: <TextSpan>[
      //       TextSpan(
      //         text: 'Cac ban ',
      //         style: TextStyle(
      //           color: Colors.cyan,
      //           fontWeight: FontWeight.bold,
      //           fontSize: 45
      //         ),
      //       ),
      //       TextSpan(
      //         text: 'Chung toi',
      //         style: TextStyle(color: Colors.green),
      //
      //       )
      //     ],
      //   ),
      // ),

