import 'package:bloc_test/bloc/arithmetic_bloc.dart';
import 'package:bloc_test/bloc/counter_bloc.dart';
import 'package:bloc_test/cubit/areea_of_circle_cubit.dart';
import 'package:bloc_test/cubit/arithmetic_cubit.dart';
import 'package:bloc_test/cubit/circumference_cubit.dart';
import 'package:bloc_test/cubit/counter_cubit.dart';
import 'package:bloc_test/cubit/dashboard_cubit.dart';
import 'package:bloc_test/cubit/simple_interest_cubit.dart';
import 'package:bloc_test/cubit/student_cubit.dart';
import 'package:bloc_test/service_locator/service_locator.dart';
import 'package:bloc_test/view/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<CounterCubit>(
              create: (context) => serviceLocator()), //method first
          BlocProvider(
              create: (context) =>
                  serviceLocator<ArithmeticCubit>()), //method second
          BlocProvider(create: (context) => serviceLocator<StudentCubit>()),
          BlocProvider<SimpleInterestCubit>(
              create: (context) => serviceLocator()),
          BlocProvider<AreaOfCircleCubit>(
              create: (context) => serviceLocator()),
          BlocProvider<CircumferenceCubit>(
              create: (context) => serviceLocator()),
          BlocProvider<ArithmeticBloc>(create: (context) => serviceLocator()),
          BlocProvider<CounterBloc>(create: (context) => serviceLocator()),
          BlocProvider(
              create: (context) => serviceLocator<DashboardCubit>(
                  // context.read<CounterCubit>(),
                  // context.read<ArithmeticCubit>(),
                  // context.read<StudentCubit>(),
                  // context.read<AreaOfCircleCubit>(),
                  // context.read<SimpleInterestCubit>(),
                  // context.read<CircumferenceCubit>(),
                  )),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter BLoC',
          // home: DashboardView(),
          home: BlocProvider.value(
            value: serviceLocator<DashboardCubit>(),
            child: DashboardView(),
          ),
        ));
  }
}
