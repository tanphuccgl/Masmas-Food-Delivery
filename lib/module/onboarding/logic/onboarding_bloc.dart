import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part "onboarding_state.dart";

class OnboardingBloc extends Cubit<OnboardingState> {
  OnboardingBloc() : super(OnboardingState());
}
