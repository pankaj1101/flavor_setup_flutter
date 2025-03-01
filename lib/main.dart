import 'package:flutter/material.dart';
import 'package:setup_flavor/config/flavor_config.dart';
import 'package:setup_flavor/pages/home_pages.dart';

Future<void> mainCommon(Flavor dev) async {
  await FlavorConfig.loadConfig(dev);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: FlavorConfig.appName, home: HomePages());
  }
}
