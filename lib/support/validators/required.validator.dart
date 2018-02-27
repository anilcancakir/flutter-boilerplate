import 'package:app/support/validators/base.validator.dart';

class RequiredValidator extends BaseValidator {
  @override
  String validate(Object value, String attribute) {
    if (value is String && value.isEmpty) {
      return 'The $attribute is required.';
    }

    return null;
  }
}