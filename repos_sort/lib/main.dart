import 'package:flutter/material.dart';

import 'package:repos_sort/routes.dart';

void main() => runApp(App());

var routes = Routes();

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      initialRoute: routes.initialRoute,
      home: routes.home,
      routes: routes.list,
    );
  }
}
