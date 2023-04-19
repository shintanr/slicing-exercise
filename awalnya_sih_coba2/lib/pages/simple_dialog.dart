// import 'package:flutter/material.dart';

// class DemoSimpleDialog extends StatefulWidget {
//   const DemoSimpleDialog({super.key});

//   @override
//   State<DemoSimpleDialog> createState() => _DemoSimpleDialogState();
// }

// enum Answer { YES, NO }

// class _DemoSimpleDialogState extends State<DemoSimpleDialog> {
//   String answer = '';
//   String message = '';

//   void setAnswer(String value) {
//     setState(() {
//       answer = value;
//       message = 'Anda memilih $Answer';
//     });
//   }

//   Future<Null> confirm(BuildContext context) async {
//     var simpleDialog = SimpleDialog(
//       title: Text('konfirmasi'),
//       children: [
//         Column(
//           children: [
//             Text('File akan dihapus, Anda yakin?'),
//             Container(
//               height: 25,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.pop(context, Answer.YES);
//                   },
//                   child: Text('Ya'),
//                 ),
//                 Container(
//                   width: 5,
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.pop(context, Answer.NO);
//                   },
//                   child: Text('Tidak'),
//                 ),
//                 Container(
//                   width: 5,
//                 ),
//               ],
//             )
//           ],
//         )
//       ],
//     );
//     if (await showDialog(
//             context: context,
//             builder: (BuildContext context) {
//               return SimpleDialog();
//             }) ==
//         Answer.YES) {
//       setAnswer('ya');
//     } else {
//       setAnswer('tidak');
//     }
//   }
// }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text('Demo Simple Dialog'),
//     ),
//     body: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           ElevatedButton(
//             onPressed: () {
//               confirm(context);
//             },
//             child: Text('Tampilkan dialog'),
//           ),
//         ],
//       ),
//     ),
//   );
// }
