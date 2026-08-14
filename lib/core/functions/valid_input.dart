import 'package:get/get.dart';

enum InputType { email, number, decimal, password, text }

/// Validates a text input field based on type, length, and requirement.
///
/// Returns a descriptive error message if invalid, otherwise `null`.
String? validateInput(
  String? value, {
  int min = 2,
  int max = 100,
  InputType type = InputType.text,
  bool isRequired = true,
}) {
  // Handle optional fields
  if ((value == null || value.isEmpty) && !isRequired) {
    return null;
  }

  // Required validation
  if (value == null || value.isEmpty) {
    return "هذا الحقل مطلوب.";
  }

  // Length validation
  if (value.length < min) {
    return "يجب أن يكون على الأقل $min أحرف.";
  }

  if (value.length > max) {
    return "يجب ألا يتجاوز $max أحرف.";
  }

  // Type-specific validation
  switch (type) {
    case InputType.email:
      if (!GetUtils.isEmail(value)) {
        return "يرجى إدخال بريد إلكتروني صحيح.";
      }
      break;

    case InputType.number:
      final cleanedValue = value.replaceAll(' ', '');
      if (!GetUtils.isNumericOnly(cleanedValue)) {
        return "يُسمح بالأرقام فقط.";
      }
      if (cleanedValue.length < min) {
        return "يجب أن يكون على الأقل $min أرقام.";
      }
      if (cleanedValue.length > max) {
        return "يجب ألا يتجاوز $max أرقام.";
      }
      break;

    case InputType.decimal:
      if (double.tryParse(value) == null) {
        return "يرجى إدخال رقم عشري صحيح.";
      }
      break;

    case InputType.password:
      // You can add stronger password rules here if needed
      break;

    case InputType.text:
      break;
  }

  return null; // All good
}

/// Validates a password confirmation field.
///
/// Returns a descriptive message if the passwords do not match or fail basic validation.
String? validateConfirmPassword(
  String? value,
  String originalPassword, {
  bool isRequired = true,
}) {
  final error = validateInput(
    value,
    min: 6,
    max: 25,
    type: InputType.password,
    isRequired: isRequired,
  );
  if (error != null) return error;

  if (value != originalPassword) {
    return "كلمتا المرور غير متطابقتين.";
  }

  return null;
}

/// Validates a dropdown or select input.
///
/// Returns a message if the user has not selected any value.
String? validateSelect(String? value, {bool isRequired = true}) {
  if (!isRequired) return null;
  if (value == null || value.isEmpty) {
    return "يرجى اختيار خيار.";
  }
  return null;
}
