import 'package:flutter_bloc/flutter_bloc.dart';

class CircumferenceCubit extends Cubit<double> {
  CircumferenceCubit() : super(0);

  void calculate(double radius) {
    emit(2 * 3.14 * radius);
  }
}
