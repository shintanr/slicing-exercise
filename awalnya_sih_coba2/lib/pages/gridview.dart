import 'package:flutter/material.dart';

class DemoGridView extends StatefulWidget {
  const DemoGridView({super.key});

  @override
  State<DemoGridView> createState() => _DemoGridViewState();
}

class _DemoGridViewState extends State<DemoGridView> {
  List<String> ramen = [
    'ramen1',
    'ramen2',
    'ramen3',
    'ramen4',
    'ramen5',
    'ramen6'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo GridView'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          // List.generate(
          //   ramen.length,
          //   (index) {
          //     return GridTile(
          //       child: GestureDetector(
          //         child: Container(
          //           decoration: BoxDecoration(
          //             image: DecorationImage(
          //               fit: BoxFit.fill,
          //               image: AssetImage('assets/' + ramen[index] + '.jpg'),
          //             ),
          //           ),
          //         ),
          //         onTap: () {
          //           print('Anda memilih ${names[index]}.jpg'),
          //         },
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
