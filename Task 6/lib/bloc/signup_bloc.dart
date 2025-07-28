import 'package:flutter_bloc/flutter_bloc.dart';
import '../validation/validator.dart';
import 'signup_event.dart';
import 'signup_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpState()) {
    on<EmailChanged>((event, emit) {
      final error = Validator.validateEmail(event.email);
      emit(state.copyWith(
        email: event.email,
        errorMessage: error,
        isValid: error == null && Validator.validatePassword(state.password) == null,
      ));
    });

    on<PasswordChanged>((event, emit) {
      final error = Validator.validatePassword(event.password);
      emit(state.copyWith(
        password: event.password,
        errorMessage: error,
        isValid: Validator.validateEmail(state.email) == null && error == null,
      ));
    });

    on<SubmitSignUp>((event, emit) {
      if (state.isValid) {
        emit(state.copyWith(errorMessage: null));
      
      } else {
        emit(state.copyWith(errorMessage: 'Please fix errors before submitting.'));
      }
    });
  }
}
