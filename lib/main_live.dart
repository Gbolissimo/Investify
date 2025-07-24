import 'package:flutter/material.dart';
import 'config/app_config.dart';
import 'my_app.dart';

void main() {
  AppConfig.appFlavor = Flavor.live;
  runApp(MyApp());
}
