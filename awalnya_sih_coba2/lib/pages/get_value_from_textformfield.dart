import 'package:flutter/material.dart';

class DemoGetValueTFF extends StatefulWidget {
  const DemoGetValueTFF({super.key});

  @override
  State<DemoGetValueTFF> createState() => _DemoGetValueTFFState();
}

class _DemoGetValueTFFState extends State<DemoGetValueTFF> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void validateInput() {
    FormState? form = this.formKey.currentState;

    SnackBar message = SnackBar(
      content: Text('Proses Validasi sukses...'),
    );

    if (form != null) {
      if (form.validate()) {
        ScaffoldMessenger.of(context).showSnackBar(message);
      }
    }
  }

  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Demo Get Value TextFormField'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: myController,
                  decoration: InputDecoration(
                    hintText: 'Nama Anda',
                  ),
                  keyboardType: TextInputType.text,
                  validator: (String? value) {
                    if (value.toString().isEmpty) {
                      return 'Nama tidak boleh kosong';
                    } else {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Text(myController.text +
                                  ', selamat datang di pemrograman Android'),
                            );
                          });
                    }
                    ;
                  },
                  autofocus: true,
                ),
                Container(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    validateInput();
                  },
                  child: Text('OK'),
                ),
              ],
            )),
      ),
    );
  }
}
