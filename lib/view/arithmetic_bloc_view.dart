import 'package:bloc_test/cubit/arithmetic_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticBlocView extends StatelessWidget {
  ArithmeticBlocView({super.key});

  final formKey = GlobalKey<FormState>();
  final firstController = TextEditingController();
  final secondController = TextEditingController();

  int first = 0;
  int second = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("arithmetic cubit"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              controller: firstController,
            ),
            TextFormField(
              controller: secondController,
            ),
            BlocBuilder<ArithmeticCubit, int>(
              builder: (context, state) {
                return Text(
                  "Result: $state",
                  style: const TextStyle(
                      fontSize: 48, fontWeight: FontWeight.bold),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                first = int.parse(firstController.text);
                second = int.parse(secondController.text);
                print(first);
                print(second);
                context.read<ArithmeticCubit>().add(first, second);
              },
              child: Text("Add"),
            ),
            ElevatedButton(
              onPressed: () {
                first = int.parse(firstController.text);
                second = int.parse(secondController.text);
                context.read<ArithmeticCubit>().subtract(first, second);
              },
              child: Text("Subtract"),
            ),
            ElevatedButton(
              onPressed: () {
                first = int.parse(firstController.text);
                second = int.parse(secondController.text);
                context.read<ArithmeticCubit>().multiply(first, second);
              },
              child: Text("Multiply"),
            ),
          ],
        ),
      )),
    );
  }
}
