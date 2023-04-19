import 'package:flutter/material.dart';

class DataValidate extends StatefulWidget {
  const DataValidate({super.key});

  @override
  State<DataValidate> createState() => _DataValidateState();
}

class _DataValidateState extends State<DataValidate> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void validateInput() {
    FormState? form = this.formKey.currentState;

    SnackBar message = SnackBar(content: Text('Proses validasi sukses...'));

    if (form != null) {
      if (form.validate()) {
        ScaffoldMessenger.of(context).showSnackBar(message);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Demo Form'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Nama ',
                    labelText: 'Nama',
                    icon: Icon(Icons.person),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.text,
                validator: (String? value) {
                  if (value.toString().isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                },
              ),
              Container(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'No. Hp',
                    labelText: 'No. Hp',
                    icon: Icon(
                      Icons.phone,
                    ),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.phone,
                validator: (String? value) {
                  if (value.toString().isEmpty) {
                    return 'No hp tidak boleh kosong';
                  }
                },
              ),
              Container(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Email',
                    labelText: 'Email',
                    icon: Icon(
                      Icons.email_outlined,
                    ),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.emailAddress,
                validator: (String? value) {
                  if (value.toString().isEmpty) {
                    return 'Email address kosong';
                  }
                },
              ),
              Container(
                height: 10,
              ),
              ElevatedButton(
                onPressed: validateInput,
                child: Text('Validasi data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
