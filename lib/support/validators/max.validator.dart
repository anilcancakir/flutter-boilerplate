import 'package:app/support/validators/base.validator.dart';

class MaxValidator extends BaseValidator {
  final int max;

  MaxValidator(this.max);

  @override
  String validate(Object value, String attribute) {
    if (value is String && value.length > this.max) {
      return 'The $attribute may not be greater than ${this.max} characters.';
    }
    return null;
  }
}