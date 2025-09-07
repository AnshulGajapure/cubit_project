import 'package:cubit_project/my_home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MyHomeCubit>();
    return BlocConsumer<MyHomeCubit, MyHomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: [
            Text(cubit.hi),
            ElevatedButton(
              onPressed: cubit.onTap,
              child: Text("change"),
              onLongPress: cubit.onLongPress,
            )
          ],
        );
      },
    );
  }
}
