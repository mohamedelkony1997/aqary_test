import 'package:auto_route/auto_route.dart';
import 'package:aqary_test/Screens/model.dart';

import 'package:flutter/material.dart';

class FirstWidget extends StatelessWidget {
  final DataModel data;

  FirstWidget({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Widget'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.router.push(SecondWidget(data: data) as PageRouteInfo);
          },
          child: Text('Go to Second Widget'),
        ),
      ),
    );
  }
}

class SecondWidget extends StatelessWidget {
  final DataModel data;

  SecondWidget({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Widget'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.router.push(ThirdWidget(data: data) as PageRouteInfo);
          },
          child: Text('Go to Third Widget'),
        ),
      ),
    );
  }
}

class ThirdWidget extends StatelessWidget {
  final DataModel data;

  ThirdWidget({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Widget'),
      ),
      body: Center(
        child: Text('Title: ${data.title}\nDescription: ${data.description}'),
      ),
    );
  }
}

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(page: FirstWidget),
    MaterialRoute(page: SecondWidget),
    MaterialRoute(page: ThirdWidget),
  ],
)
class AppRouter {  Route? onGenerateRoute(RouteSettings settings) {
  }
}
