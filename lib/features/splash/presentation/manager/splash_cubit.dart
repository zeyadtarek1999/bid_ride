import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial()) {
    _startTimer();
  }

  void _startTimer() {
    Timer(const Duration(seconds: 2), () {
      emit(SplashFinished());
    });
  }
}
