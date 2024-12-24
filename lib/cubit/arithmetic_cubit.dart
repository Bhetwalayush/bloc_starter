import 'package:flutter_bloc/flutter_bloc.dart';

int initial = 0;

class ArithmeticCubit extends Cubit<int> {
  ArithmeticCubit() : super(initial);

  void add(int a, int b) {
    emit(a + b);
  }

  void subtract(int a, int b) {
    emit(a - b);
  }

  void multiply(int a, int b) {
    emit(a * b);
  }
}
