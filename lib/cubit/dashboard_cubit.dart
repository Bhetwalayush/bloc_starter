import 'package:bloc_test/bloc/arithmetic_bloc.dart';
import 'package:bloc_test/cubit/areea_of_circle_cubit.dart';
import 'package:bloc_test/cubit/arithmetic_cubit.dart';
import 'package:bloc_test/cubit/circumference_cubit.dart';
import 'package:bloc_test/cubit/counter_cubit.dart';
import 'package:bloc_test/cubit/simple_interest_cubit.dart';
import 'package:bloc_test/cubit/student_cubit.dart';
import 'package:bloc_test/view/area_of_circle_cubit_view.dart';
import 'package:bloc_test/view/arithmetic_bloc_view.dart';
import 'package:bloc_test/view/arithmetic_cubit_view.dart';
import 'package:bloc_test/view/circumference_view.dart';
import 'package:bloc_test/view/counter_bloc_view.dart';
import 'package:bloc_test/view/counter_cubit_view.dart';
import 'package:bloc_test/view/simple_interest_cubit_view.dart';
import 'package:bloc_test/view/student_bloc_view.dart';
import 'package:bloc_test/view/student_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._counterCubit,
    this._arithmeticCubit,
    this._studentCubit,
    this._areaOfCircleCubit,
    this._simpleInterestCubit,
    this._circumferenceCubit,
    this._arithmeticBloc,
  ) : super(null);

  final CounterCubit _counterCubit;
  final ArithmeticCubit _arithmeticCubit;
  final StudentCubit _studentCubit;
  final AreaOfCircleCubit _areaOfCircleCubit;
  final SimpleInterestCubit _simpleInterestCubit;
  final CircumferenceCubit _circumferenceCubit;
  final ArithmeticBloc _arithmeticBloc;

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

  void openAreaOfCircleView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: _areaOfCircleCubit,
                  child: AreaOfCircleCubitView(),
                )));
  }

  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: _simpleInterestCubit,
                  child: SimpleInterestCubitView(),
                )));
  }

  void openCircumferenceView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: _circumferenceCubit,
                  child: CircumferenceView(),
                )));
  }

  void openCounterBlocView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: _counterCubit,
                  child: CounterBlocView(),
                )));
  }

  void openArithmeticBlocView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: _arithmeticBloc,
                  child: ArithmeticBlocView(),
                )));
  }

  void openStudentBlocView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: _studentCubit,
                  child: StudentBlocView(),
                )));
  }
}
