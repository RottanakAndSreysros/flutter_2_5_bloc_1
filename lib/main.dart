import 'package:flutter/material.dart';
import 'package:flutter_2_5_bloc_1/core/app_navigator.dart';
import 'package:flutter_2_5_bloc_1/core/app_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_2_5_bloc_1/core/injection.dart' as get_it;

void main() {
  get_it.setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: appProvider,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: AppNavigator.navigator,
      ),
    );
  }
}
