import 'package:app/support/validators/base.validator.dart';

class StringValidator extends BaseValidator {
  @override
  String validate(Object value, String attribute) {
    if (value is String) {
      return null;
    }

    return 'The $attribute must be a string.';
  }
}