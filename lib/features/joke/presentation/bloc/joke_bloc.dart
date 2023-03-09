import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joke_app/core/usecases/usecase.dart';
import 'package:joke_app/features/joke/domain/usecase/get_joke.dart';

import '../../../../core/models/formz/formz_status.dart';
import '../../domain/entities/joke.dart';
import '../../domain/entities/single.dart';

part 'joke_bloc.freezed.dart';
part 'joke_event.dart';
part 'joke_state.dart';

class JokeBloc extends Bloc<JokeEvent, JokeState> {
  JokeBloc() : super(_JokeState(entity: SingleJokeEntity())) {
    on<_GetJoke>((event, emit) async {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      final usecase = GetJokeUseCase();
      final result = await usecase.call(NoParams());
      result.either((left) {
        emit(state.copyWith(
            status: FormzStatus.submissionFailure,
            errorMessage: left.errorMessage));
      }, (right) {
        emit(state.copyWith(
          status: FormzStatus.submissionSuccess,
          entity: right,
        ));
      });
    });
  }
}
