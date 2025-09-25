// import 'package:flutter/material.dart';
// import 'package:owala_app/utils/const.dart';
// class BallanceCard extends StatelessWidget {
//   const BallanceCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(defaultPadding),
//       padding: EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: primaryColor,
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Row(
//         children: [
//           Expanded(
//             flex: 2,
//             child: Container(
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(8)
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                 Row(
//                   children: [
//                       Icon(Icons.account_balance_wallet, color: primaryColor,),
//                   SizedBox(width: 8,),
//                   Text(
//                     "GlowPay",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black
//                     ),
//                   )
//                   ],
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   "Rp ∞ ",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black
//                   ),
//                 )
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 3,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 _actionButton(Icons.arrow_upward, "pay"),
//                 _actionButton(Icons.add_circle, "top up"),
//                 _actionButton(Icons.explore, "explore"),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget _actionButton(IconData icon, String label) {
//     return Column(
//       children: [
//         Icon(icon, color: Colors.white),
//         SizedBox(height: 4),
//         Text(
//           label,
//           style: TextStyle(
//             color: Colors.white
//           ),
//         )
//       ],
//     );
//   }
// }