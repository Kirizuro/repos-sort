import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    void _enviar() {
      final form = formKey.currentState;
      String user;
      var usuario = LoginParameters(user);

      if (form.validate()) {
        form.save();
        showDialog(
            context: context,
            child: AlertDialog(
              title: Text('User: $usuario '),
            ));
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                onSaved: (value) => LoginParameters(value).user = value,
                // validator: (String value) =>
                // value.isNotEmpty ? null : 'Não pode estar vazio',
                decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: "Digite algum usuario do Github"),
              ),
              RaisedButton(
                onPressed: () => _enviar,
                child: Text('Go to content'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LoginParameters {
  String user;

  LoginParameters(this.user);
}
