import 'package:cubit_project/my_home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => MyHomeCubit(),
        child: MyHome(),
      ),
    );
  }
}