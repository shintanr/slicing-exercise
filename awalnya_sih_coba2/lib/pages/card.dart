import 'package:flutter/material.dart';

class DemoCard extends StatefulWidget {
  const DemoCard({super.key});

  @override
  State<DemoCard> createState() => _DemoCardState();
}

class _DemoCardState extends State<DemoCard> {
  final int count = 20;
  List<bool> items = [];

  @override
  void initState() {
    for (var i = 0; i < this.count; i++) {
      items.add(false);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Card'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.only(left: 15, top: 20, right: 15),
            child: GestureDetector(
              child: ListTile(
                title: Text('Item ${index + 1}'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.star),
              ),
              onTap: () {
                print('Anda memilih item ${index + 1}');
              },
            ),
          );
        },
      ),
    );
  }
}
