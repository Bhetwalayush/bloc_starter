import 'package:bloc_test/cubit/circumference_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CircumferenceView extends StatelessWidget {
  final _radiusController = TextEditingController();
  CircumferenceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parameter of Circle'),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              label: Text('Enter radius'),
            ),
            controller: _radiusController,
          ),
          BlocBuilder<CircumferenceCubit, double>(
              builder: (context, double state) {
            return Text(
              '$state',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            );
          }),
          ElevatedButton(
            onPressed: () {
              final radius = double.parse(_radiusController.text);
              context.read<CircumferenceCubit>().calculate(radius);
            },
            child: Text('Calculate'),
          )
        ],
      ),
    );
  }
}
