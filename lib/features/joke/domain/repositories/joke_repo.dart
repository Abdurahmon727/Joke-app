import 'package:joke_app/core/data/either.dart';
import 'package:joke_app/features/joke/domain/entities/joke.dart';

import '../../../../core/error/failure.dart';

abstract class JokeRepository {
  Future<Either<Failure, JokeEntity>> getJoke();
}
