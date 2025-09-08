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
    final TextEditingController textFiled = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text('My Home')),
      body: BlocConsumer<MyHomeCubit, MyHomeState>(
        listener: (context, state) {
          if (state is changeUI) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("State changed: ${cubit.hi}")),
            );
          }else{
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("stop")));
          }
        },
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("${cubit.count}"),
                TextField(
                  controller: textFiled,
                  decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
                ),
                ElevatedButton(
                  onPressed: () => cubit.onTap(textFiled.text),
                  onLongPress:() => cubit.onLongPress,
                  child: const Text("Change"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
