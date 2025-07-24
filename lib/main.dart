// lib/main.dart
import 'package:flutter/material.dart';
import 'config/app_config.dart';
import 'my_app.dart'; // Your main app widget

void main() {
  AppConfig.appFlavor = Flavor.live;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
