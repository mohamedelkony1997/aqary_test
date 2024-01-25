import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:aqary_test/Screens/task1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auto Route Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: ExtendedNavigator.builder<AppRouter>(
        router: AppRouter(),
      ),
      onGenerateRoute: AppRouter().onGenerateRoute,
    );
  }
}
