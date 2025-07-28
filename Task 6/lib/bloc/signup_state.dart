class SignUpState {
  final String email;
  final String password;
  final bool isValid;
  final String? errorMessage;

  SignUpState({
    this.email = '',
    this.password = '',
    this.isValid = false,
    this.errorMessage,
  });

  SignUpState copyWith({
    String? email,
    String? password,
    bool? isValid,
    String? errorMessage,
  }) {
    return SignUpState(
      email: email ?? this.email,
      password: password ?? this.password,
      isValid: isValid ?? this.isValid,
      errorMessage: errorMessage,
    );
  }
}