import 'package:flutter/material.dart';

class DemoAlertDialog extends StatefulWidget {
  const DemoAlertDialog({super.key});

  @override
  State<DemoAlertDialog> createState() => _DemoAlertDialogState();
}

class _DemoAlertDialogState extends State<DemoAlertDialog> {
  void onPressed(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text('Dibilang jangan ditekan'),
      content: Text(
          'Nggak manut, dibilang jangan ditakan. saya sudah cukup tertekan oleh keadaan'),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Ok deh, maf yah'),
        ),
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo AlertDialog'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Jangan tekan saya'),
          onPressed: () {
            onPressed(context);
          },
        ),
      ),
    );
  }
}
