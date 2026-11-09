String? validateRequired(String? value) {
  if (value == null || value.trim().isEmpty) {
    return 'Field is required';
  }
  return null;
}

String? validateEmail(String? value) {
  final error = validateRequired(value);
  if (error != null) return error;

  final regex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
  if (!regex.hasMatch(value!.trim())) {
    return 'Enter a valid email';
  }
  return null;
}

String? validatePassword(String? value) {
  final error = validateRequired(value);
  if (error != null) return error;

  if (value!.length < 7) {
    return 'Password must be at least 7 characters';
  }
  return null;
}