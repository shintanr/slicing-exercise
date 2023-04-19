import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
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
        title: Text('Demo ListView.builder'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Item ${index + 1}'),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.delete),
            onTap: () {
              print('Anda memilih item ${index + 1}');
            },
          );
        },
      ),
    );
  }
}
