class AppValidators {
  static String? required(String? value, {String fieldName = 'This field'}) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }

  static String? email(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }

    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  static String? phone(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Phone number is required';
    }

    final phoneRegex = RegExp(r'^\d{10}$');
    if (!phoneRegex.hasMatch(value)) {
      return 'Enter a valid 10-digit phone number';
    }
    return null;
  }

  static String? minLength(
    String? value,
    int length, {
    String fieldName = 'Input',
  }) {
    if (value == null || value.trim().length < length) {
      return '$fieldName must be at least $length characters';
    }
    return null;
  }

  static String? maxLength(
    String? value,
    int length, {
    String fieldName = 'Input',
  }) {
    if (value != null && value.trim().length > length) {
      return '$fieldName must be at most $length characters';
    }
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) return 'Password is required';
    if (value.length < 6) return 'Password must be at least 6 characters';
    return null;
  }

  static String? match(
    String? value,
    String? compareWith, {
    String fieldName = 'Value',
  }) {
    if (value != compareWith) return '$fieldName does not match';
    return null;
  }
}
