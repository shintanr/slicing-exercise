import 'package:flutter/material.dart';

class ShowTimePicker extends StatefulWidget {
  const ShowTimePicker({super.key});

  @override
  State<ShowTimePicker> createState() => _ShowTimePickerState();
}

class _ShowTimePickerState extends State<ShowTimePicker> {
  TimeOfDay time = TimeOfDay.now();

  Future<Null> selectTime(BuildContext context) async {
    final TimeOfDay? selected =
        await showTimePicker(context: context, initialTime: this.time);

    if (selected != null && selected != this.time) {
      setState(() {
        this.time = selected;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Show Date Picker'),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text('waktu yang dipilih ${this.time.toString()}'),
            ElevatedButton(
              onPressed: () {
                selectTime(context);
              },
              child: Text('Pilih waktu'),
            ),
          ],
        ),
      ),
    );
  }
}
