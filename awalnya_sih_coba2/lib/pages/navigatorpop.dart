import 'package:awalnya_sih_coba2/pages/second_page.dart';
import 'package:flutter/material.dart';

class NavigatorPOPTakeAData extends StatelessWidget {
  final GlobalKey<ScaffoldState> scafflodKey = GlobalKey<ScaffoldState>();

  navigateScreen(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return SecondPage();
        },
      ),
    );

    // membuat objek snackbbar
    SnackBar snackBar = SnackBar(content: Text('Nilai yang dipilih $result'));

    // menampilkan snack bar
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafflodKey,
      appBar: AppBar(
        title: Text('Layar 1'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: navigateScreen(context),
          child: Text('Buka layar 2'),
        ),
      ),
    );
  }
}
