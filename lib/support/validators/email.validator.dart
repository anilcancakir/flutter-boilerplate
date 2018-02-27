import 'package:app/support/validators/base.validator.dart';
import 'package:app/support/validators/string.validator.dart';
import 'package:validator/validator.dart';

class EmailValidator extends BaseValidator {
  @override
  String validate(Object value, String attribute) {
    if (value is String && !isEmail(value)) {
      return 'The $attribute must be a valid email address.';
    }

    return new StringValidator().validate(value, attribute);
  }
}