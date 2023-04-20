import 'package:flutter/material.dart';

class DemoAutoFocusedNode extends StatefulWidget {
  const DemoAutoFocusedNode({super.key});

  @override
  State<DemoAutoFocusedNode> createState() => _DemoAutoFocusedNodeState();
}

class _DemoAutoFocusedNodeState extends State<DemoAutoFocusedNode> {
  late FocusNode myFocusNode;

  @override
  void initState() {
    myFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo FocusNode dan AutoFocus'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Nama',
                ),
                autofocus: true,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'No. Hp',
                ),
                focusNode: myFocusNode,
              ),
              Container(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(myFocusNode);
                },
                child: Text('Pindah Fokus'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
