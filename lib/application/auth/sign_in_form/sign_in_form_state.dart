part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState(
    EmailAddress emailAddress,
    Password password,
    bool showErrorMessages,
    bool isSubmitting,
    Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  ) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        EmailAddress(''),
        Password(''),
        false,
        false,
        none(),
      );
}
