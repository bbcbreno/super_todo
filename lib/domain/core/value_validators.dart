import 'package:dartz/dartz.dart';
import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    throw left(ValueFailure.invalidEmail(input));
  }
}

Either<ValueFailure<String>, String> validadePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    throw left(ValueFailure.shortPassword(input));
  }
}
