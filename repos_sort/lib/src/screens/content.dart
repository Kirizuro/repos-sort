import 'package:flutter/material.dart';
import 'package:repos_sort/src/screens/login.dart';

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Content'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            ExtractParameter(),
            Text('Content'),
            RaisedButton(
              child: Text('Go to login'),
              onPressed: () {
                Navigator.of(context).pushNamed('/login');
              },
            )
          ],
        ),
      ),
    );
  }
}

class ExtractParameter extends StatelessWidget {
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    final LoginParameters args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Center(
        child: Text(args.user),
      ),
    );
  }
}
