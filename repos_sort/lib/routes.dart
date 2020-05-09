import 'package:flutter/material.dart';

import './src/screens/login.dart';
import './src/screens/content.dart';

class Routes {
  final home = Login();

  final initialRoute = '/content';

  final list = <String, WidgetBuilder>{
    // '/login': (BuildContext context) => Login(),
    '/content': (BuildContext context) => Content(),
    ExtractParameter.routeName: (context) => ExtractParameter(),
  };
}
