import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:investify/pages/signup_screen.dart';
import 'blocs/user/user_bloc.dart';
import 'blocs/user/user_event.dart';
import 'config/app_config.dart';
import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserBloc()..add(LoadUsers('demo@example.com')),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppConfig.appTitle,
        theme: ThemeData(
          primarySwatch: AppConfig.appFlavor == Flavor.sandbox ? Colors.orange : Colors.blue,
        ),
        home: SignupScreen(),
      ),
    );
  }
}
