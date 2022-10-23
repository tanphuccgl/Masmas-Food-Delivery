import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masmas_food/route/coordinator.dart';

part "onboarding_state.dart";

class OnboardingBloc extends Cubit<OnboardingState> {
  OnboardingBloc() : super(OnboardingState());

  void onBtnNext() => XCoordinator.showOnboardingSecond();
}
