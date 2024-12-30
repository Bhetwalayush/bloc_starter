import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'arithmetic_event.dart';
// part 'arithmetic_state.dart';

class ArithmeticBloc extends Bloc<ArithmeticEvent, int> {
  ArithmeticBloc() : super(0) {
    on<IncrementEvent>((event, emit) {
      // TODO: implement event handler
      final result = event.first + event.second;
      emit(result);
    });

    on<DecrementEvent>((event, emit) {
      // TODO: implement event handler
      final result = event.first - event.second;
      emit(result);
    });

    on<MultiplyEvent>((event, emit) {
      // TODO: implement event handler
      final result = event.first * event.second;
      emit(result);
    });
  }
}
