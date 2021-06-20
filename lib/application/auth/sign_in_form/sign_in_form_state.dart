part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState(
    EmailAddress emailAddress,
    Password password,
    // ignore: avoid_positional_boolean_parameters
    bool showErrorMessages,
    bool isSubmitting,
    Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  ) = _SignInFormState;

  // TODO: fix null safety, currect with initial valied values
  factory SignInFormState.initial() => SignInFormState(
        EmailAddress('mail@test.com'),
        Password('123456'),
        false,
        false,
        none(),
      );
}
