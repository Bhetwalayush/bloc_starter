import 'package:bloc_test/bloc/arithmetic_bloc.dart';
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
        title: Text("Arithmetic Bloc"),
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
            BlocBuilder<ArithmeticBloc, int>(
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
                context
                    .read<ArithmeticBloc>()
                    .add(IncrementEvent(first, second));
              },
              child: Text("Add"),
            ),
            ElevatedButton(
              onPressed: () {
                first = int.parse(firstController.text);
                second = int.parse(secondController.text);
                context
                    .read<ArithmeticBloc>()
                    .add(DecrementEvent(first, second));
              },
              child: Text("Subtract"),
            ),
            ElevatedButton(
              onPressed: () {
                first = int.parse(firstController.text);
                second = int.parse(secondController.text);
                context
                    .read<ArithmeticBloc>()
                    .add(MultiplyEvent(first, second));
              },
              child: Text("Multiply"),
            ),
          ],
        ),
      )),
    );
  }
}
