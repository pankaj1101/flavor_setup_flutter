import 'package:flutter/material.dart';
import 'package:setup_flavor/config/flavor_config.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flavor Setup')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('App Environment: ${FlavorConfig.apiBaseUrl}'),
          ],
        ),
      ),
    );
  }
}
