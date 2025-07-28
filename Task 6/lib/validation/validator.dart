class Validator {
  static String? validateEmail(String email) {
    if (email.isEmpty) return 'Email can\'t be empty';
    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(email)) return 'Invalid email format';
    return null;
  }

  static String? validatePassword(String password) {
    if (password.isEmpty) return 'Password can\'t be empty';
    if (password.length < 6) return 'Password must be at least 6 characters';
    return null;
  }
}