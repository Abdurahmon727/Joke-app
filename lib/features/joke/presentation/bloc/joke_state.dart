part of 'joke_bloc.dart';

@freezed
class JokeState with _$JokeState {
  const factory JokeState({
    @Default(FormzStatus.pure) FormzStatus status,
    required JokeEntity entity,
    @Default('') String errorMessage,
  }) = _JokeState;
}
