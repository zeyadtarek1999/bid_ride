import 'package:bid_ride/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class AppValidator {
  static noValidation() {
    return null;
  }

  static String? emailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.Please_enter_your_email.tr();
    }
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return LocaleKeys.Please_enter_your_email_in_the_right_format.tr();
    }
    return null;
  }
  static String? passwordValidation(String? value) {
    final symbolRegex = RegExp(r'[!@#\$&*~]');
    final numberRegex = RegExp(r'[0-9]');

    if (value == null || value.isEmpty) {
      return LocaleKeys.Please_enter_your_password.tr();
    }
    if (value.length < 8) {
      return LocaleKeys.Password_must_be_at_least_8_characters.tr();
    }
    if (!numberRegex.hasMatch(value)) {
      return LocaleKeys.Password_must_contain_numbers.tr();
    }
    if (!symbolRegex.hasMatch(value)) {
      return LocaleKeys.Password_must_contain_symbols.tr();
    }
    return null;
  }

  static String? confirmPasswordValidation(String? value, String? originalPassword) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.Password_cannot_be_empty.tr();
    }
    if (value != originalPassword) {
      return LocaleKeys.Password_donot_match.tr();
    }
    return null;
  }

  static String? phoneValidation(String? value) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.Please_enter_your_phone_number.tr();
    }
    // if (!RegExp(r'^\(\d{3}\) \d{3}-\d{4}$').hasMatch(value)) {
    //   return LocaleKeys.enterValidNumber.tr();
    // }
    return null;
  }

  static String? firstNameValidation(String? name , ) {
    if (name == null || name.isEmpty) {
      return LocaleKeys.Enter_your_first_name.tr();
    }
    return null;
  }
  static String? lastNameValidation(String? name , ) {
    if (name == null || name.isEmpty) {
      return LocaleKeys.Enter_your_last_name.tr();
    }
    return null;
  }


  static String? addressValidation(String? address) {
    if (address == null || address.isEmpty) {
      return 'LocaleKeys.addressRequired.tr()';
    }
    return null;
  }

  static String? zipCodeValidation(String? zipCode) {
    if (zipCode == null || zipCode.isEmpty) {
      return 'LocaleKeys.zipCodeRequired.tr()';
    }
    if (!RegExp(r'^\d{5}(-\d{4})?$').hasMatch(zipCode)) {
      return 'LocaleKeys.enterValidZipCode.tr()';
    }
    return null;
  }
}
