import 'package:bloc_test/cubit/arithmetic_cubit.dart';
import 'package:bloc_test/cubit/counter_cubit.dart';
import 'package:bloc_test/cubit/student_cubit.dart';
import 'package:bloc_test/view/arithmetic_cubit_view.dart';
import 'package:bloc_test/view/counter_cubit_view.dart';
import 'package:bloc_test/view/student_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._counterCubit,
    this._arithmeticCubit,
    this._studentCubit,
  ) : super(null);

  final CounterCubit _counterCubit;
  final ArithmeticCubit _arithmeticCubit;
  final StudentCubit _studentCubit;

  void openCounterView(BuildContext context) {
    // Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Flutter BLoC',
    //   home: BlocProvider(
    //     create: (context) => CounterCubit(),
    //     child: CounterCubitView(),
    //   ),
    // );
    // }

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: _counterCubit,
                  child: CounterCubitView(),
                )));
  }

  void openArithmeticView(BuildContext context) {
    // Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Flutter BLoC',
    //   home: BlocProvider(
    //     create: (context) => CounterCubit(),
    //     child: CounterCubitView(),
    //   ),
    // );
    // }

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: _arithmeticCubit,
                  child: ArithmeticCubitView(),
                )));
  }

  void openStudentView(BuildContext context) {
    // Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Flutter BLoC',
    //   home: BlocProvider(
    //     create: (context) => CounterCubit(),
    //     child: CounterCubitView(),
    //   ),
    // );
    // }

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: _studentCubit,
                  child: StudentCubitView(),
                )));
  }
}
