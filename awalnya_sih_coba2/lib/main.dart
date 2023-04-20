import 'package:awalnya_sih_coba2/pages/alert_dialog.dart';
import 'package:awalnya_sih_coba2/pages/button.dart';
import 'package:awalnya_sih_coba2/pages/card.dart';
import 'package:awalnya_sih_coba2/pages/data_validation.dart';

import 'package:awalnya_sih_coba2/pages/drop_down_button.dart';
import 'package:awalnya_sih_coba2/pages/first_page.dart';
import 'package:awalnya_sih_coba2/pages/focusnode_autofocused.dart';
import 'package:awalnya_sih_coba2/pages/get_value_from_textformfield.dart';
import 'package:awalnya_sih_coba2/pages/listview.dart';
import 'package:awalnya_sih_coba2/pages/listview_builder.dart';
import 'package:awalnya_sih_coba2/pages/second_page.dart';
import 'package:awalnya_sih_coba2/pages/textfromfield_change.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) {
          return FirstPage();
        },
        '/second': (BuildContext context) {
          return SecondPage();
        },
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
