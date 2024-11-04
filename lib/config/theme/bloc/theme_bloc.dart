// theme_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'theme_event.dart';
import 'theme_state.dart';
import 'package:flutter/material.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(LightThemeState(ThemeData.light())) {
    on<ToggleThemeEvent>((event, emit) {
      if (state is LightThemeState) {
        emit(DarkThemeState(ThemeData.dark()));
      } else {
        emit(LightThemeState(ThemeData.light()));
      }
    });
  }
}
