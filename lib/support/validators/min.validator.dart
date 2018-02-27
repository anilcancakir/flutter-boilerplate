import 'package:app/support/validators/base.validator.dart';

class MinValidator extends BaseValidator {
  final int min;

  MinValidator(this.min);

  @override
  String validate(Object value, String attribute) {
    if (value is String && value.toString().length < this.min) {
      return 'The $attribute must be at least ${this.min} characters.';
    }

    return null;
  }
}